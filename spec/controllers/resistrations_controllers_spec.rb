require 'rails_helper'

describe Users::RegistrationsController, type: :controller do

  describe 'GET #new' do
    before do
      # TODO: どこかのページから:newに遷移しないといけない
      get :new
    end

    it "ログインしていないとrootにリダイレクトされる" do
      expect(response).to redirect_to root_path
    end
  end
end
