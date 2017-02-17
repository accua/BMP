FactoryGirl.define do
  factory :user do
    email 'new_user@test.com'
    password 'password'
    username 'guest'
    fullname 'joe schmoe'
  end
end
