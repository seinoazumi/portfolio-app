require 'rails_helper'

describe 'トップページの表示', type: :system do
  before do
    @admin_user = FactoryBot.create(:admin_user, email: "admin@email.com", password: "foobar", admin: 1)
    @other_user = FactoryBot.create(:other_user, email: "other@email.com", password: "foobar", admin: 0)
  end


  it 'ログインしない状態でトップページを訪れるとAdmin Loginが表示される' do
    visit root_path
    expect(page).to have_content 'Admin Login'
  end

  it '管理者としてログインすると、ログアウトボタンが表示される' do
    visit new_user_session_path
    fill_in 'Email', with: @admin_user.email
    fill_in 'Password', with: @admin_user.password
    click_on 'Log in'
    visit root_path
    expect(page).to have_content 'Logout'
  end
end
