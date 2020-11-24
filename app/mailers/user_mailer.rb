class UserMailer < ApplicationMailer
  default from: 'bicravetonchaton@yopmail.com'

  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    mail(
      to: @user.email,
      subject: 'Bienvenue chez nous !'
    )

  end


end