# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rating do
    score 1
    comment "MyString"
    user_id 1
  end
end
