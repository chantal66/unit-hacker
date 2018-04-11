require 'rails_helper'

describe  'Admin Dashboard' do
  it 'can be reached successfully' do
    visit admin_root_path

    expect(page.status_code).to eq(200)
  end
end