FactoryBot.define do
  factory :user do
    last_name { "大阪" }
    first_name { "太郎" }
    last_name_kana { "オオサカ" }
    first_name_kana { "タロウ" }
    sequence(:email) { |n| "tester#{n}@example.com" }
    password { "password" }
    password_confirmation { "password" }
    postal_code { "0000000" }
    address { "osaka" }
    phone_number { "0000000000" }
  end
end
