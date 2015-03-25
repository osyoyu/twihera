require 'rails_helper'

RSpec.describe "TwitterAccounts", type: :request do
  describe "GET /twitter_accounts" do
    it "works! (now write some real specs)" do
      get twitter_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
