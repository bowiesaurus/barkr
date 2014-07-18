# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    sequence(:email) { |n| "#{n}@example.com"}
    password "puppypals318"
    password_confirmation "puppypals318"
  end
end
