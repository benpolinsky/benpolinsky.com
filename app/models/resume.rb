class Resume < ApplicationRecord
  mount_uploader :document, ResumeUploader
  
  def self.published
    where(published: true)
  end
  
  def self.unpublished
    where("published = false OR published IS NULL")
  end
end
