FactoryBot.define do
  factory :expenditure do
    amount { 1.5 }
    due_date { "2019-11-19" }
    comment { "MyText" }
    user_id { 1 }
    description { "MyText" }
  end
end
