require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "factories" do
    post = Factory :post
    post2 = Factory :post, :title => "My new title"
    
    assert_equal "A title", post.title
    assert_equal "My new title", post2.title
    assert_not_nil post.user
  end
end
