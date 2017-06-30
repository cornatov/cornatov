require 'rails_helper'

  describe Comment do
      before do
      @product=Product.create!(name: "vintage bike", description:"old bike from early 1900s", colour: "light green", price: "200.00", image_url: "https://s-media-cache-ak0.pinimg.com/564x/5c/b9/ed/5cb9ed21a2ddcc4f0cfa0e0d8069edce.jpg")
      @user = User.create!(first_name: "Robert", last_name: "Smith", email: "smith90@gmail.com", password: "IAMCOOL") 
      @product.comments.create!(rating: 3, user: @user, body: "Awful bike!")
    end
    
    it 'is incorrect without rating' do
        expect(Comment.new(user: @user, body: "cool", product: @product)).not_to be_valid
    end
    
       it 'is incorrect without body' do
        expect(Comment.new(rating: 3, user: @user, product: @product)).not_to be_valid
    end
    
       it 'is incorrect without user' do
        expect(Comment.new(rating: 3, body: "cool", product: @product)).not_to be_valid
    end
end