FactoryGirl.define do
  factory :user do
    name    "Michael Hartl"
    email   "michaek@example.com"
    password "foobar"
    password_confirmation  "foorbar"
  end
end
