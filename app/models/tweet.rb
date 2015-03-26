require 'json'

class Tweet < ActiveRecord::Base
  belongs_to :twitter_account

  def self.from_twitter_object(twitter_object)
    twitter_account = TwitterAccount.where(twitter_id: twitter_object.user.id).first_or_initialize
    p twitter_account.screen_name = twitter_object.user.screen_name
    twitter_account.save!

    tweet = self.find_or_create_by(twitter_account: twitter_account)
    tweet.twitter_id = twitter_object.id
    tweet.raw_json = JSON.generate(twitter_object.attrs)
    tweet.save!
  end
end
