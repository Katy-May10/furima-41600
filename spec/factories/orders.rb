FactoryBot.define do
  factory :order do
    id { Faker::Number.digit }
    token { 'tok_abcdefghijk00000000000000000' }
    user_id { Faker::Number.digit }
    item_id { Faker::Number.digit }
  end
end
