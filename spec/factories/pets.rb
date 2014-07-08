# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pet do
    name "MyString"
    breed "MyString"
    age 1
    color "MyString"
    weight 1
    personality "MyText"
    favorite_things "MyText"
    owner_id 1
  end
end
