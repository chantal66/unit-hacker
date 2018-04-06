require 'rails_helper'

describe 'navigate' do
  before  do
    @user = FactoryBot.create(:user)
    login_as(@user, :scope => :user)

    @property = FactoryBot.create(:property)
    @property1 = FactoryBot.create(:second_property)
  end

  describe 'index' do
    it 'can be reached successfully' do
      visit properties_path

      expect(page.status_code).to eq(200)
      expect(page).to have_content(/Properties/)
    end

    it 'has a properties list' do
      visit properties_path

      expect(page).to have_content(@property.name)
      expect(page).to have_content(@property1.name)
    end
  end
end