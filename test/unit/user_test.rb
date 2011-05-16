require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "factories" do
    Factory :user
    assert_equal 1, User.all.count
  end

  test "before create" do
    user = Factory :user, :email => "toto@toto.com"
    assert_equal "toto@toto.com", user.email

    user = Factory :user, :email => nil, :name => "titi"
    assert_equal "titi@me.com", user.email
  end
  
  should have_many(:posts)
  should have_many(:comments)
  
  describe User do
    before(:each) { Factory :user }
    should validate_uniqueness_of(:name)
  end
  
end
