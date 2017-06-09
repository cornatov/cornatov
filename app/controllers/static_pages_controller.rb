class StaticPagesController < ApplicationController
  def index
  end




def landing_page
  @products = Product.limit(3)
 # render layout: "products"
end

end




def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
  to: 'cornatov@buffalo.edu',
  subject: "A new contact form message from #{@name}",
  body: @message).deliver_now
  UserMailer.contact_form(@email, @name, @message).deliver_now
end

private
  def contact_params
    params.require(:name, :email, :message)
  end
  