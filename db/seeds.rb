
@user = User.create!(first_name: 'Jon', last_name: 'Snow', email: 'test@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
puts '1 user created'

Property.create!(name: 'Greenwood')
Property.create!(name: 'Salamandra')
Property.create!(name: 'West lakes')

puts '3 properties created'