FactoryBot.define do
  factory :order_address do
    user_id { Faker::Number.digit }
    item_id { Faker::Number.digit }
    postal_code { '000-0000' }
    prefecture_id { Faker::Number.non_zero_digit }
    city { Faker::Address.city }
    house_number { Faker::Address.street_address }
    building_name { Faker::Address.building_number }
    phone { '09012345678' }
  end
end
