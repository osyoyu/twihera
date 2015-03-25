require 'rails_helper'

RSpec.describe "twitter_accounts/edit", type: :view do
  before(:each) do
    @twitter_account = assign(:twitter_account, TwitterAccount.create!())
  end

  it "renders the edit twitter_account form" do
    render

    assert_select "form[action=?][method=?]", twitter_account_path(@twitter_account), "post" do
    end
  end
end
