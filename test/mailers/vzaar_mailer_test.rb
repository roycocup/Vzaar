require 'test_helper'

class VzaarMailerTest < ActionMailer::TestCase

  test "should be able to send email to one of the fixtures" do
	VzzarMailer.signed_up_email(@one)

  end

end
