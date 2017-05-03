require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :string => "MyString",
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "input#post_string[name=?]", "post[string]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"
    end
  end
end
