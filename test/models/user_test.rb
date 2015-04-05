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

  test "a user should enter a last name" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end

   test "a user should enter a profile name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end

  test ' a user should have a unique profile name' do
    user = User.new
    user.profile_name = 'Anabiacube'
    user.email = 'anabiacube@gmail.com'
    user.first_name = 'Anabia'
    user.last_name = 'Khowaja'
    user.password = 'password'
    user.password_confirmation = 'password'
    puts user.errors.inspect
    assert user.save
    assert !user.errors[:profile_name].empty?
  end
end
