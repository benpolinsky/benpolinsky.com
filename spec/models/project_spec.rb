require 'rails_helper'

PROJECT_ATTRIBUTES = [:name, :description, :site_url, :image, :client, :public_repo]
PROJECT_REQUIRED_ATTRIBUTES = [:name, :description, :site_url, :client]
RSpec.describe Project, type: :model do
  before do
    @project = build(:project)
  end
  
  PROJECT_ATTRIBUTES.each do |att|
    it "has a #{att} property" do
      expect(@project).to respond_to att
    end
  end
  
  PROJECT_REQUIRED_ATTRIBUTES.each do |required_att|
    it "requires a #{required_att}" do
      @project[required_att] = nil
      expect(@project).to_not be_valid
      expect(@project.errors[required_att].size).to eq 1      
      @project[required_att] = "Filled in"
      expect(@project).to be_valid
    end
  end
end