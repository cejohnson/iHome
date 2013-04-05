# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :residence do
    name "Test Residence"
    rent false
    cleaning_frequency 3
  end
  
  factory :secondresidence, class: Residence do |r|
    r.name "Test residence 2"
    r.rent true
    r.cleaning_frequency 2
  end
  
  factory :residence_with_interior, class: Residence do |r|
    r.name "Test residence 3"
    r.rent true
    r.cleaning_frequency 4
    r.interior { [ FactoryGirl.create(:interior) ] }
  end
end
