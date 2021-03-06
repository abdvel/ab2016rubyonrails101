require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyString",
      :body => "MyText",
      :is => "MyString",
      :_public => ""
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_body[name=?]", "post[body]"

      assert_select "input#post_is[name=?]", "post[is]"

      assert_select "input#post__public[name=?]", "post[_public]"
    end
  end
end
