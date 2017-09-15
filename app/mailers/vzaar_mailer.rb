class VzaarMailer < ApplicationMailer

  layout 'mailer'

  def signed_up_email(user)
	@user = user
	mail(to: @user.email, subject: 'Welcome aboard!')
	Email.new(to: @user.email, content: "some content", status: "SENT").save()
  end


end
