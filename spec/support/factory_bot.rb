require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end
  
  factory :product do
    name { 'Product' }
    description { 'Test Description' }
    price { 100 }
  end
end
