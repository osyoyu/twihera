require 'rails_helper'

RSpec.describe "twitter_accounts/index", type: :view do
  before(:each) do
    assign(:twitter_accounts, [
      TwitterAccount.create!(),
      TwitterAccount.create!()
    ])
  end

  it "renders a list of twitter_accounts" do
    render
  end
end
