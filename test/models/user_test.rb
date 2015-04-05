require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do
    user = User.new
    # assertion makes sure that certain value is occuring in our test
    # the second part tells us that user should not be saved in our database.

    assert !user.save
    assert !user.errors[:first_name].empty?
    # asserting that the errors on the first field name is not empty

  end

end
