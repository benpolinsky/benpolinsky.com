require 'rails_helper'

LINK_ATTRIBUTES = [:name, :url, :subtitle, :image]
LINK_REQUIRED_ATTRIBUTES = [:name, :url, :subtitle]

RSpec.describe Link, type: :model do
  before do
    @link = build(:link)
  end
  
  LINK_ATTRIBUTES.each do |att|
    it "has a #{att} property" do
      expect(@link).to respond_to att
    end
  end
  
  LINK_REQUIRED_ATTRIBUTES.each do |required_att|
    it "requires a #{required_att}" do
      @link[required_att] = nil
      expect(@link).to_not be_valid
      expect(@link.errors[required_att].size).to eq 1      
      @link[required_att] = "Filled in"
      expect(@link).to be_valid
    end
  end
end