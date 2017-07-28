FactoryGirl.define do
  factory :user do |u|
    u.sequence(:first_name) { |n| "Test-#{n}" }
    u.sequence(:last_name) { |n| "User-#{n}" }
    u.sequence(:email) { |n| "user#{n}@example.com" }
    password 'please123'
  end
end
