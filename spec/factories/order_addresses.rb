FactoryBot.define do
  factory :order_address do
    token { 'tok_abcdefghijk00000000000000000' }
    postal_code { '000-0000' }
    prefecture_id { Faker::Number.non_zero_digit }
    city { Faker::Address.city }
    house_number { Faker::Address.street_address }
    building_name { Faker::Address.building_number }
    phone { '09012345678' }
  end
end
