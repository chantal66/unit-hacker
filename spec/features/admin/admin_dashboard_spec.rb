require 'rails_helper'

describe  'Admin Dashboard' do
  it 'can be reached successfully' do
    visit admin_root_path

    expect(page.status_code).to eq(200)
  end

  it 'only signed in users can see the dashboard' do
    visit admin_root_path

    expect(current_path).to eq(new_user_session_path)
  end

  it 'cannot be reached by non admin users' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)

    visit admin_root_path

    expect(current_path).to eq(properties_path)
  end
end