require 'rails_helper'

RSpec.describe "reviews/show", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :topic => "Topic",
      :description => "MyText",
      :user_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Topic/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
