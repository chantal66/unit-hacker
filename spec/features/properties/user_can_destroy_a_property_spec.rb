require 'rails_helper'

describe 'User can delete a property' do
  describe 'Destroy' do
    before  do
      @user = FactoryBot.create(:user)
      login_as(@user, :scope => :user)
      @property = FactoryBot.create(:property)
    end

    it 'can delete a property' do
      visit properties_path
      click_link 'Delete'

      expect(page).to have_content("#{@property.name} was succesfully deleted")
    end
  end
end