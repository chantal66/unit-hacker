require 'rails_helper'

RSpec.describe Apartment, type: :model do
  describe 'Validation' do
    before do
      @apartment = FactoryBot.create(:apartment)
    end

    it 'is invalid without a proper attributes' do
      @apartment.unit_number = nil
      @apartment.beds = nil
      @apartment.baths = nil

      expect(@apartment).to be_invalid
    end
  end

  describe 'Relationship' do
    before(:each) do
      @property = FactoryBot.create(:property)
      @apartment = FactoryBot.create(:apartment)
    end

    it 'belongs to' do
      expect(@apartment).to respond_to(:property)
    end
  end
end
