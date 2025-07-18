FactoryBot.define do
  factory :book do
    title { Faker::Book.title } # attributes get fake data
    author { Faker::Book.author }
    read { false }
  end
end
