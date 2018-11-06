FactoryBot.define do
  factory :member do
    name { "Bob Ross" }
    role { "Senator" }
    party { "D" }
    twitter_id { "painterbob" }
    facebook { "BobRoss" }
    seniority { 1 }
    next_election { 2020 }
  end
end
