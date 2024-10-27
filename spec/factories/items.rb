FactoryBot.define do
  factory :item do
    name            { '商品の名前' }
    explanation     { '商品の説明' }
    category_id     { Faker::Number.non_zero_digit }
    status_id       { Faker::Number.non_zero_digit }
    shipping_fee_id { Faker::Number.non_zero_digit }
    prefecture_id   { Faker::Number.non_zero_digit }
    shipping_day_id { Faker::Number.non_zero_digit }
    price           { '1000' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
