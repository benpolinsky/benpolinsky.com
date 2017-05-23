require 'rails_helper'

RSpec.describe Resume, type: :model do
  before do
    @resume = Resume.create(published: false)
    @second_resume = Resume.create(published: false)
    @third_resume = Resume.create(published: true)
  end
  
  it "returns published resumes" do
    expect(Resume.published).to match([@third_resume])    
  end
  
  it "returns unpublished resumes" do
    expect(Resume.unpublished).to match([@resume, @second_resume])
  end
end
