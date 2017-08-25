class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'http://99cats.com/session/new'
    mail(to: @user.email, subject: 'A World of Cats Awaits You')
  end
end
