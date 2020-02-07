FactoryBot.define do
  factory :projection do
    due_date { "2020-02-07" }
    user_id { 1 }
    description { "MyString" }
  end
end
