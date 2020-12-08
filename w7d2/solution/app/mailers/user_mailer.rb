class UserMailer < ApplicationMailer
    default from: 'front@example.com'

    def welcome_email(user)
      @user = user 
      @url = 'http://localhost:3000/session/new'
      mail(to: @user.username, subject:'99 Cats!')
    end
end
