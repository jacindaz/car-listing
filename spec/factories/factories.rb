# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manufacturer do
    sequence(:name) {|n| "manufacturer #{n}"}
    country "Germany"
  end

  factory :car do
    manufacturer
    color "purple"
    year "1923"
    mileage 100
    description "it is purple, this is a wonderful description"
  end
end
