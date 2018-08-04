require 'test_helper'

class TravelTest < ActiveSupport::TestCase
  def setup
   @travel = travels(:london)    
  end

  test "should save travel with user, title or description" do 
    assert @travel.valid?
  end

  test "should not save travel without user" do 
    @travel.user = nil
    assert_not @travel.valid?
    assert_equal [:user], @travel.errors.keys
  end

  test "should not save travel without title" do 
    @travel.title = nil
    assert_not @travel.valid?
    assert_equal [:title], @travel.errors.keys
  end

end
