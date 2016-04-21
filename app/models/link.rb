class Link < ActiveRecord::Base
  include RankedModel
  ranks :row_order

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates :name, presence: true
  validates :url, presence: true
  validates :subtitle, presence: true
  
  mount_uploader :image, ImageUploader
  
  def self.by_row_order
    order(row_order: :asc)
  end
end
