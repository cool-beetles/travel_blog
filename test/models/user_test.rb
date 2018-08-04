require 'test_helper'

class UserTest < ActiveSupport::TestCase
 def setup
    @user = users(:writer)
  end
  test "should save @user with proper first_name and last_name" do 
    assert @user.valid?
  end

  test "should not save @user with first name shorter than 3 letters" do 
    user = User.new(first_name: "Ad", last_name: "Murphy")
    assert_not user.valid?
    assert_equal [:first_name], user.errors.keys
  end 

  test "should not save @user with last name shorter than 3 letters" do  
    user = User.new(first_name: "Adam", last_name: "Mu")
    assert_not user.valid?
    assert_equal [:last_name], user.errors.keys
  end

  test "should not save @user without first name" do
    @user.first_name = nil
    assert_not @user.valid?
    assert_equal [:first_name], @user.errors.keys
  end

  test "should not save @user without last name" do
    @user.last_name = nil
    assert_not @user.valid?
    assert_equal [:last_name], @user.errors.keys
  end
end
