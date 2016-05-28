require 'rails_helper'

RSpec.describe "reviews/index", :type => :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :topic => "Topic",
        :description => "MyText",
        :user_id => ""
      ),
      Review.create!(
        :topic => "Topic",
        :description => "MyText",
        :user_id => ""
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
