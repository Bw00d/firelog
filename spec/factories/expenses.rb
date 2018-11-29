FactoryBot.define do
  factory :expense do
    amount { "9.99" }
    date { "2018-02-28" }
    category { 1 }
    vendor { "" }
    comment { "MyText" }
  end
end
