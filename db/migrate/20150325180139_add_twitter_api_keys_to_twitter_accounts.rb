class AddTwitterApiKeysToTwitterAccounts < ActiveRecord::Migration
  def change
    add_column :twitter_accounts, :twitter_api_consumer_key, :string
    add_column :twitter_accounts, :twitter_api_consumer_secret, :string
    add_column :twitter_accounts, :twitter_api_access_token, :string
    add_column :twitter_accounts, :twitter_api_access_token_secret, :string
  end
end
