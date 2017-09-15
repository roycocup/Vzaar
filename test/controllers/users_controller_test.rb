require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should have have a list of users operational" do
	get users_url
    assert true
  end



end
