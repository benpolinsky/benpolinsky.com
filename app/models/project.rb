class Project < ActiveRecord::Base
  validates_presence_of :name, :description, :client, :site_url
end
