FactoryGirl.define do
  DEFAULT_PASSWORD = "password"

  # free attributes
  sequence(:email) { Faker::Internet.email }
  sequence(:password) { Faker::Internet.password }

  # the model using defined (generated values) attributes
#  factory :user do
#    email { generate(:email) }
#    password { generate(:password) }
#  end
  
  factory :user do
    email { 'tommaso@devolute.org' }
    password { 'tommasorails' }
  end

  factory :idea do
    name { 'Release' }
    description { 'This is my new awesome music release.' }
  end

end
