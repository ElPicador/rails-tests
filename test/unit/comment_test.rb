require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  test "mocha" do
    comment = Factory :comment
    Comment.expects(:find).with(1).returns(comment)
    assert_equal comment, Comment.find(1)
    
    comment = Factory :comment
    comment.expects(:save).returns(true)
    assert_true comment.save
    
    Comment.any_instance.stubs(:text).returns('stub text')
    assert_equal 'stub text', Factory(:comment).text
    assert_equal 'stub text', Factory(:comment).text
  end
  
  test "Timecop" do
    time_freeze = 5.days.ago
    Timecop.freeze(time_freeze) do
      comment = Factory :comment
      comment.update_attribute :text, "New test"
      assert_equal time_freeze, comment.updated_at
    end
    
    time_travel = 6.days.from_now
    Timecop.travel(time_travel)
    assert_equal time_travel.to_date, Time.now.to_date
    Timecop.return 
  end
  
end
