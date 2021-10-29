FactoryBot.define do
  factory :user do
    nickname              {'TEST'}
    email                 {Faker::Internet.free_email}
    password              {'000aaa'}
    password_confirmation {password}
    last_name             {"名字田"}
    first_name            {"名前郎"}
    last_name_kana        {"ミョウジ"}
    first_name_kana       {"ナマエ"}
    birth_date            {Date.new(1999, 12, 31)}
  end
end