require "rails_helper"

RSpec.describe Administration::ResumesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/administration/resumes").to route_to("administration/resumes#index")
    end

    it "routes to #new" do
      expect(:get => "/administration/resumes/new").to route_to("administration/resumes#new")
    end

    it "routes to #show" do
      expect(:get => "/administration/resumes/1").to route_to("administration/resumes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/administration/resumes/1/edit").to route_to("administration/resumes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/administration/resumes").to route_to("administration/resumes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/administration/resumes/1").to route_to("administration/resumes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/administration/resumes/1").to route_to("administration/resumes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/administration/resumes/1").to route_to("administration/resumes#destroy", :id => "1")
    end

  end
end
