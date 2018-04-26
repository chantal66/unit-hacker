
@user = User.create!(first_name: 'Jon', last_name: 'Snow', email: 'test@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
puts '1 user created'

Property.create!(id: 1, name: 'Greenwood', user_id: @user.id)
Property.create!(id: 2, name: 'Salamandra', user_id: @user.id)
Property.create!(id: 3, name: 'West lakes', user_id: @user.id)

puts '3 properties created'

10.times do
  Apartment.create(unit_number: 102, baths: 1, beds:1, unit_location: 'garden', garage: 'yes',garage_number: 23, renovation_type: 'full', floor_plan: 'Alexandria', property_id: 1)
end

10.times do
  Apartment.create(unit_number: 122, baths: 1, beds:2, unit_location: 'ground', garage: 'yes',garage_number: 11, renovation_type: 'full', floor_plan: 'Italia', property_id: 2)
end

10.times do
  Apartment.create(unit_number: 222, baths: 2, beds:2, unit_location: 'ground', garage: 'yes',garage_number: 21, renovation_type: 'full', floor_plan: 'Barroco', property_id: 3)
end

puts '30 apartments created'