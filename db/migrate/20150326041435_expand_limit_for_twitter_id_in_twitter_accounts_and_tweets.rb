class ExpandLimitForTwitterIdInTwitterAccountsAndTweets < ActiveRecord::Migration
  def change
    change_column :twitter_accounts, :twitter_id, :integer, limit: 8
    change_column :tweets, :twitter_id, :integer, limit: 8
  end
end
