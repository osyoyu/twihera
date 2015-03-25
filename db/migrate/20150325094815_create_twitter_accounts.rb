class CreateTwitterAccounts < ActiveRecord::Migration
  def change
    create_table :twitter_accounts do |t|
      t.integer :twitter_id
      t.integer :screen_name

      t.timestamps null: false
    end
  end
end
