# Preview all emails at https://careerfoundrytasks-ron90.c9users.io/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("cornatov@buffalo.edu", "Cornato Ron", "Hello World!")
  end
end