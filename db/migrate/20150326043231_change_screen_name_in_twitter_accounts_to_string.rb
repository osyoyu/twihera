class ChangeScreenNameInTwitterAccountsToString < ActiveRecord::Migration
  def change
    change_column :twitter_accounts, :screen_name, :string
  end
end
