require 'rails_helper'

describe Product do
    
  context "when the product has comments" do
        
    before do
      @product=Product.create!(name: "vintage bike", description:"old bike from early 1900s", colour: "light green", price: "200.00", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5c/b9/ed/5cb9ed21a2ddcc4f0cfa0e0d8069edce.jpg")
      @user = User.create!(first_name: "Robert", last_name: "Smith", email: "smith90@gmail.com", password: "IAMCOOL") 
      @product.comments.create!(rating: 3, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Great bike!")
    end
    
    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq (3)
    end


    it "is not valid without a name" do
      expect(Product.new(description: "Nice bike", price: "200.00")).not_to be_valid
    end
    
    it "is not valid without description" do
      expect(Product.new(price: "200.00")).not_to be_valid
    end
    
  end

end 