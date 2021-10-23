FactoryBot.define do
  factory :item do
    name                    {Faker::Name.first_name}
    info                    {Faker::Name.initials(number: 20)}
    category_id             {Faker::Number.between(from: 2, to: 11)}
    sales_status_id         {Faker::Number.between(from: 2, to: 7)}
    shipping_fee_status_id  {Faker::Number.between(from: 2, to: 3)}
    prefecture_id           {Faker::Number.between(from: 2, to: 48)}
    scheduled_delivery_id   {Faker::Number.between(from: 2, to: 4)}
    price                   {Faker::Number.between(from: 300, to: 9999999)}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end

  end
end
