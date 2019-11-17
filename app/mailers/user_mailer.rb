class UserMailer < ApplicationMailer
  default from: 'notifications@printerdown.com'

  def welcome_email(user)
    @user = user
    @url = 'http://printrdwn.com:3000/login'
    mail(to: @user.email, subject: 'Welcome to printrdwn.com')
  end
end
