FactoryGirl.define do
  DEFAULT_PASSWORD = "password"

  # free attributes
  sequence(:email) { Faker::Internet.email }
  sequence(:password) { Faker::Internet.password }

  # generate file

  factory :user do
    email { 'tommaso@devolute.org' }
    password { 'tommasorails' }
  end

  factory :idea do
    name { 'Release' }
    user { create(:user) }
    description { 'This is my new awesome music release.' }
  end

end
