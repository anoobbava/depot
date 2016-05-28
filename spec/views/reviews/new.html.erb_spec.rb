require 'rails_helper'

RSpec.describe "reviews/new", :type => :view do
  before(:each) do
    assign(:review, Review.new(
      :topic => "MyString",
      :description => "MyText",
      :user_id => ""
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_topic[name=?]", "review[topic]"

      assert_select "textarea#review_description[name=?]", "review[description]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"
    end
  end
end
