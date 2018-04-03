FactoryBot.define do
  factory :apartment do
    unit_number 1
    beds 1
    baths 1
    unit_location "Garden"
    garage true
    garage_number 1
    renovation_type "full"
    property
  end
end
