require 'rails_helper'

RSpec.describe "twitter_accounts/new", type: :view do
  before(:each) do
    assign(:twitter_account, TwitterAccount.new())
  end

  it "renders new twitter_account form" do
    render

    assert_select "form[action=?][method=?]", twitter_accounts_path, "post" do
    end
  end
end
