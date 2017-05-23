require 'rails_helper'

RSpec.describe "administration/resumes/new", type: :view do
  before(:each) do
    assign(:resume, Resume.new())
  end

  it "renders new administration_resume form" do
    render

    assert_select "form[action=?][method=?]", administration_resumes_path, "post" do
    end
  end
end
