class StaticPagesController < ApplicationController
  def index
  end




def landing_page
  @products = Product.limit(3)
 # render layout: "products"
end

end


