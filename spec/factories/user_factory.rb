FactoryGirl.define do
  sequence(:email) {|n| "user#{n}@example.com"}    
  factory :user do
    email 
    password 'something'
    first_name "Peter"
    last_name "Example"
    admin false      
  end 
end      