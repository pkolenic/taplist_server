FactoryGirl.define do
  factory :user do
    first_name            "Michael"
    last_name             "Hartl"
    email                 "michael@example.com"
    company_id            1
    phone_number          "2085555555"
    password              "foobar"
    password_confirmation "foobar"
  end
  factory :company do
    name                  "Brew Company"
    address               "123 Some Street"
    city                  "Some City"
    state                 "OH"
    zip                   "12345"
    email                 "company@example.com"
  end
end