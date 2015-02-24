# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    body Faker::Lorem.paragraph(2)
    author_id 1
  end
end
