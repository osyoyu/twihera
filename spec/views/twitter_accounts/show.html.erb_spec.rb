require 'rails_helper'

RSpec.describe "twitter_accounts/show", type: :view do
  before(:each) do
    @twitter_account = assign(:twitter_account, TwitterAccount.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
