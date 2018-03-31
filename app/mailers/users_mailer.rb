class UsersMailer < ApplicationMailer
	  default from: 'mygovpansion@gmail.com'
  layout 'mailer'

	def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Pensioners portal' )
end
end
