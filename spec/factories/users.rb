FactoryBot.define do
  factory :user do
    name { "Test User" }
    # sequence(:email) { |n| "user#{n}@test.com" }
    email { 'testuser@example.com'}
    password { 'V4lidp4ssword' }
    password_confirmation { 'V4lidp4ssword' }
  end
end

# FactoryBot.define do
#   factory :user do
#     # Must use a string for a role to allow comparing with DB-stored roles
#     role { 'user' }
#     first_name { Faker::Name.first_name }
#     last_name { Faker::Name.last_name }

#     trait :invalid do
#       first_name { nil }
#     end

#     factory :admin_user do
#       role { 'admin' }
#     end

#     after(:create) do |user|
#       # Required when using Devise's confirmable module
#       # user.confirm
#     end
#   end
# end
