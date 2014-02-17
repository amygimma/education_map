FactoryGirl.define do
  factory :user do
    first_name  "Example"
    last_name   "User"
    username    "exampleuser"
    email       "user@example.com"
    password    "foobar1234"
  end
end