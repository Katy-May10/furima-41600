FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    last_name             { '鈴木' }
    first_name            { '花' }
    last_name_reading     { 'スズキ' }
    first_name_reading    { 'ハナ' }
    birthday              { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
