class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates_presence_of :name, :description, :client, :site_url
  mount_uploader :image, ImageUploader
end
