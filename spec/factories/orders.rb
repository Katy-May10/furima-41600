FactoryBot.define do
  factory :order do
    id { Faker::Number.digit }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
