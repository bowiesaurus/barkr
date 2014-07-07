# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "MyString"
    location "MyString"
    pet_id 1
    bio "MyText"
  end
end
