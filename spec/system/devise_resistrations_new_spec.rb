require 'rails_helper'

describe '新規ユーザー作成ページ', type: :system do
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let(:other_user) { FactoryBot.create(:other_user) }

  context "ログインしていない時" do
    it "新規ユーザー作成ページに行こうとすると、リダイレクトされる"
  end

  context "通常ユーザーでログインしている時" do
  end

  context "管理ユーザーでログインしている時" do
  end
end
