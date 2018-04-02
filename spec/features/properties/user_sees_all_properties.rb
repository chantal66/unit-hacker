require 'rails_helper'

describe 'index' do
  it 'sees all properties' do
    property = Property.create(:property)
    visit properties_path

    expect(page.status_code).to eq(200)
    expect(page).to have_content(property.name)
  end
end