require 'rails_helper'

RSpec.describe "reviews/edit", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :topic => "MyString",
      :description => "MyText",
      :user_id => ""
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_topic[name=?]", "review[topic]"

      assert_select "textarea#review_description[name=?]", "review[description]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"
    end
  end
end
