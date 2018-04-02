require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    before  do
      @property = FactoryBot.create(:property)
    end

    it 'can be reached successfully' do
      visit properties_path

      expect(page.status_code).to eq(200)
      expect(page).to have_content(/Properties/)
    end
  end
end