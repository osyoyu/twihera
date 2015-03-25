class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :twitter_id
      t.references :twitter_account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
