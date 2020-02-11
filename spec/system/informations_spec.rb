require 'rails_helper'

describe 'トップページの表示', type: :system do

  let(:admin_user) { FactoryBot.create(:admin_user) }
  let(:other_user) { FactoryBot.create(:other_user) }

  it 'ログインしない状態でトップページを訪れるとAdmin Loginが表示される' do
    visit root_path
    expect(page).to have_content 'Admin Login'
  end

  it '管理者としてログインすると、ログアウトボタンが表示される' do
    visit new_user_session_path
    fill_in 'Email', with: admin_user.email
    fill_in 'Password', with: admin_user.password
    click_on 'Log in'
    expect(page).to have_content 'Logout'
  end
end
