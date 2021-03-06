require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user should enter a first name" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end

  test "user should enter a last name" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end

  test "user should enter a profile name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique name " do
    user = User.new
    user.profile_name = users(:steen).profile_name
    assert !user.save
    puts user.errors.inspect
    assert !user.errors[:profile_name].empty?
  end

end
