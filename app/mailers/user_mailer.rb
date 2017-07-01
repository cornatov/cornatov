class UserMailer < ApplicationMailer
  default from: "email@something.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
         :to => 'cornatov@buffalo.edu',
         :subject => "A new contact form message from #{name}")
  end
  
  def welcome_email(email, name, message)
      @message = message
        mail(:from => 'cornatov@buffalo.edu',
          :to => email,
          :subject => "Welcome and thank you #{name} for joining!")
  end

end