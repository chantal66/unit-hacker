require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  describe 'validations' do
    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'can not be created without a first and last name' do
      @user.first_name = nil
      @user.last_name = nil
      @user.email = nil

      expect(@user).to be_invalid
    end
  end

  describe  'relationship' do
    it 'has many properties' do
      expect(@user).to respond_to(:properties)
    end
  end
end
