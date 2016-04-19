class Link < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true
  validates :subtitle, presence: true
end
