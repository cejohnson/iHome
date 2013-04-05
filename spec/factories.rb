FactoryGirl.define do
=begin
  factory :user do
    email "tester@gmail.com"
    encrypted_password "password"
    first_name "first"
    last_name "tester"
  end

  factory :seconduser, class: 'User' do |u|
    u.email "tester2@gmail.com"
    u.encrypted_password "password"
    u.first_name "second"
    u.last_name "tester"
  end

  factory :residence do
    name "Test Residence"
    rent false
    cleaning_frequency 3
  end

  factory :secondresidence, class: Residence do |b|
    b.name "Test residence 2"
    b.rent true
    b.cleaning_frequency 2
  end

  factory :user_with_residence, class: 'User' do |u|
    u.email "testerjones@gmail.com"
    u.password "password"
    u.first_name "tester"
    u.last_name "jones"
    u.residences { [ FactoryGirl.create(:residence) ] }
  end

  factory :address do
    address_line_one "123 Main St"
    address_line_two "Apt B"
    city "Durham"
    region "NC"
    country "US"
    zip "27717"
  end

  factory :contact do
    full_name "Joe T Tester"
    email "tester@foodlogiq.com"
    phone "1231231234"
    mobile "1231231234"
    mailing_address { FactoryGirl.build(:address) }
  end

  factory :residence_address do
    physical_address { FactoryGirl.build(:address) }
    mailing_address { FactoryGirl.build(:address) }
  end

  factory :document, aliases: [:company_legal_document] do
    type :company_legal
    subtype 'confidentiality-agreements'
    title 'Test document'
    expiration_date Time.now
    document File.open(__FILE__)
    user { FactoryGirl.build :user_with_residence }
    residence { user.residencees[0] }

    factory :food_safety_document do
      type :food_safety
      subtype 'gmp-audits'
      expiration_date nil
      review_audit_date { Time.now }
    end
  end

  factory :facility, class: 'Facility' do |f|
    name 'test facility'
    type 'Manufacturing Facility'
    gln '0000000000000'
    description 'facility for tests'
    primary_contact_name 'test user'
    primary_contact_email 'tuser@foodlogiq.com'
    primary_contact_phone '1231231234'
    primary_contact_mobile '1231231234'
    address { FactoryGirl.build :address }
  end

  factory :product do
    name 'Test Product'
    gtin '00000000000000'
    origin 'US'
    description 'a product for testing'
    residence { FactoryGirl.build :residence }

    factory :beverage, class: Beverage

    factory(:meatandpoultry, class: Meatandpoultry) { itemtype 'Chicken' }

    factory :preparedfood, class: Preparedfood do
      itemtype 'Green Tomatillo Salsa'
    end

    factory :produce, class: Produce
  end

  factory :restaurant do
    name 'Bob\'s House o\' Burritos'
    number 77
    phone '555-555-5555'

    factory :invited_restaurant, class: InvitedRestaurant do
      default_distributor { FactoryGirl.create :residence }
    end
  end

  factory :restaurant_invitation do
    email 'test@example.com'
    regcode do
      code = SecureRandom.hex 5
      until RestaurantInvitation.where(regcode: code).count == 0
        code = SecureRandom.hex 5
      end
      code
    end
    invited_restaurant { FactoryGirl.build :invited_restaurant }
  end
=end
end
