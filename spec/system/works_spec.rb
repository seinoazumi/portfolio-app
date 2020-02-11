require 'rails_helper'

describe 'Works 作品一覧', type: :system do
  describe '作品一覧表示ページ' do

    let(:login_user) { FactoryBot.create(:other_user) }
    
    before do
      visit new_user_session_path
      fill_in 'Email', with: login_user.email
      fill_in 'Password', with: login_user.password
      click_on 'Log in'
      visit root_path
    #   work = FactoryBot.create(:work)
    end

    context '管理者以外でログインしている時' do
      it '作品一覧ページに作品投稿ページのリンクが表示されない' do
        visit works_path
        expect(page).not_to have_content '作品投稿ページへ'
      end
    end

    context '管理者としてログインしている時' do
      let(:login_user) { FactoryBot.create(:admin_user) }

      it '作品一覧ページに作品投稿ページのリンクが表示される' do
        visit works_path
        expect(page).to have_content '作品投稿ページへ'
      end
    end
    
    it '作品一覧ページに行くと作品が表示される' do
      # visit works_path
      # expect(page).to have_selector 'img.works__img'
      
    end
  end
end
