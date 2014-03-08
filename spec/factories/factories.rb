FactoryGirl.define do

  factory :user do
    name { Faker::Name.name }
    email { |attrs| "#{attrs[:name].parameterize}@example.com" }
    password 'password'
    password_confirmation 'password'
    confirmed_at { Time.now }
  end

  factory :task do
    title { Faker::Lorem.sentence(word_count = 4, supplemental = false, random_words_to_add = 3) }
    start_at { Time.now }
    active true
    recurs_amount "1"
    recurs_type "hour"
    tolerance_amount "15"
    tolerance_type "minutes"
    user
  end

end
