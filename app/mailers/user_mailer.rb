class UserMailer < ApplicationMailer

	default from: 'notifications@example.com'

	def send_welcome_email(user)
		UserMailer.welcome_email(user).deliver
	end

	def welcome_email(user)
		@user = user
		@url = 'http://example.com/login'
		mail(to: @user.email, subject: 'Welcome to My Awesome Site')
	end
end
