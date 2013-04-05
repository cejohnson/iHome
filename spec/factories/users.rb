# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "tester@gmail.com"
    encrypted_password "password"
    first_name "first"
    last_name "tester"
  end
  
  factory :user_with_residence, class: 'User' do |u|
    u.email "testerjones@gmail.com"
    u.password "password"
    u.first_name "tester"
    u.last_name "jones"
    u.residences { [ FactoryGirl.create(:residence) ] }
  end
  
  factory :user_with_residence_with_interior, class: User do |u|
    u.email "testerjones@gmail.com"
    u.password "password"
    u.first_name "tester"
    u.last_name "jones"
    u.residences { [ FactoryGirl.create(:residence_with_interior) ] }
  end
end
