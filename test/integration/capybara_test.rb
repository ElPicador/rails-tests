require 'test_helper'

class CapybraTest < ActionDispatch::IntegrationTest

  setup do
    @user = Factory :user
  end
  
  test "capybara" do
    visit posts_path
    click_link 'New Post'
    fill_in "Text", :with => "My blog post"
    fill_in "User", :with => @user.name
    
    assert_difference "Post.count" do
      click_button "Create Post"
    end
    
    assert_equal post_path(Post.last), current_path
    assert_true page.has_content?("Post was successfully created.")
  end
  
  test "javascript" do
    user1 = Factory :user, :name => "Harmonica"
    post = Factory :post, :user => @user
    visit edit_post_path(post)
    save_and_open_page
    fill_in "User", :with => "Har"
    click_link "Harmonica"
    click_button "Update Post"
    
    assert_equal @user, post.reload.user
  end
  
end
