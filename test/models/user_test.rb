require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "User no es válido sin name" do
    user = User.new(name: nil)
    assert_not user.valid?
  end
  test "User no es válido sin email" do
    user = User.new(email: nil)
    assert_not user.valid?
  end
end
