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
    before do
      @property = Property.new(name: 'Greenwood')
    end

    it 'has many apartments' do
      expect(@property).to respond_to(:apartments)
    end

    it 'belongs to a user' do
      expect(@property).to respond_to(:user)
    end
  end
end
