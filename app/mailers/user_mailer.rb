class UserMailer < ApplicationMailer
  default from: 'admin@furrly.com'

  def welcome_email(user)
    @user = user
    mail(to: user.username, subject: 'Welcome to the Site')
  end
end
