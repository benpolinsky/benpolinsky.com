require 'rails_helper'

RSpec.describe "administration/resumes/edit", type: :view do
  before(:each) do
    @resume = assign(:resume, Resume.create!())
  end

  it "renders the edit administration_resume form" do
    render

    assert_select "form[action=?][method=?]", administration_resume_path(@resume), "post" do
    end
  end
end
