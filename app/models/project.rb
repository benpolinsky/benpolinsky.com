class Project < ApplicationRecord
  include RankedModel
  ranks :row_order
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates_presence_of :name, :description, :client, :site_url
  validates_uniqueness_of :name
  mount_uploader :image, ImageUploader

  def short_url
    site_url.sub(/^https?\:\/\//, '').sub(/^www./,'')
  end

  def self.by_row_order
    order(row_order: :asc)
  end
  
  def self.front
    where(show_on_front: true)
  end
end
