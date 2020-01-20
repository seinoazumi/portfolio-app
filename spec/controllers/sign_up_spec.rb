require 'rails_helper'

describe RegistrationsController do
  it "ログインしていない状態でsign_upページに行くとリダイレくとされる" do
    visit new_user_registration_path
    expect(response).to redirect_to root_path
  end
end
