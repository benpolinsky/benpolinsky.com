class Link < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates :name, presence: true
  validates :url, presence: true
  validates :subtitle, presence: true
end
