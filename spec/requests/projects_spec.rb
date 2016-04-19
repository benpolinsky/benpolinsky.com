require 'rails_helper'

RSpec.describe "Projects", type: :request do
  describe "GET /projects" do
    it "works!" do
      get projects_path
      expect(response).to have_http_status(200)
    end
  end
end
