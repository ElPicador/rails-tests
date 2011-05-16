require 'test_helper'

class CapybraTest < ActionDispatch::IntegrationTest

  setup do
    @user = Factory :user
  end
  
  test "capybara" do
    visit posts_path
    click_link 'New Post'
    fill_in "Text", :with => "My blog post"
    fill_in "User", :with => @user.id
    
    assert_difference "Post.count" do
      click_button "Create Post"
    end
    
    assert_equal post_path(Post.last), current_path
    assert_true page.has_content?("Post was successfully created.")
  end
  
end
