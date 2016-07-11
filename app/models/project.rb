class Project < ApplicationRecord
  include RankedModel
  ranks :row_order
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates_presence_of :name, :description, :client, :site_url
  mount_uploader :image, ImageUploader

  def self.by_row_order
    order(row_order: :asc)
  end
end
