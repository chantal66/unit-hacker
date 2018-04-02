require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do
      property = FactoryBot.create(:property)
      visit properties_path

      expect(page.status_code).to eq(200)
    end

  end
end