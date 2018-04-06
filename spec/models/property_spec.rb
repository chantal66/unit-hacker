require 'rails_helper'

RSpec.describe Property, type: :model do
  describe 'Validation' do
    before  do
      @user = FactoryBot.create(:user)
      login_as(@user, :scope => :user)

      @property = FactoryBot.create(:property)
    end

    it 'can be created' do
      expect(@property).to be_valid
    end

    it 'is invalid without a name' do
      @property.name = nil
      property2 = Property.create(name: nil)

      expect(@property).to be_invalid
      expect(property2).to be_invalid
    end

    it 'is valid with a name' do
      expect(@property).to be_valid
    end
  end

  describe 'Relationships' do
    it 'has many apartments' do
      property = Property.new(name: 'Greenwood')

      expect(property).to respond_to(:apartments)
    end
  end
end
