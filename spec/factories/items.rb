FactoryBot.define do
  factory :item do
    name            { '商品の名前' }
    explanation     { '商品の説明' }
    category_id     { Faker::Number.non_zero_digit }
    status_id       { Faker::Number.non_zero_digit }
    shippingfee_id { Faker::Number.non_zero_digit }
    prefecture_id { Faker::Number.non_zero_digit }
    shippingday_id { Faker::Number.non_zero_digit }
    price { '1000' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test.jpeg'), filename: 'test.jpeg')
    end
  end
end
