FactoryBot.define do
  factory :property do
    name 'Greenwood'
    user
  end

  factory :second_property, class: 'Property' do
    name 'Carrington'
    user
  end
end