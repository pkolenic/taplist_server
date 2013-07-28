FactoryGirl.define do
  factory :user do
    first_name            "Michael"
    last_name             "Hartl"
    email                 "michael@example.com"
    phone_number          "2085555555"
    password              "foobar"
    password_confirmation "foobar"
  end
end