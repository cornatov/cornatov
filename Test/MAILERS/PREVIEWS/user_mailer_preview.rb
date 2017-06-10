# Preview all emails at git checkout -b authentication
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("cornatov@buffalo.edu", "Cornato Ron", "Hello World!")
  end
end