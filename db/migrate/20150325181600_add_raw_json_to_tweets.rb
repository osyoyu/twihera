class AddRawJsonToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :raw_json, :text
  end
end
