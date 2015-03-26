require 'twitter'

namespace :twitter_stream do
  desc "Obtain Tweets from User Stream"

  task :all_tweets => :environment do
    client = Twitter::Streaming::Client.new do |config|
    end

    client.user do |object|
      case object
        when Twitter::Tweet
          Tweet.from_twitter_object(object)
        when Twitter::DirectMessage
          puts "It's a direct message!"
        when Twitter::Streaming::StallWarning
          warn "Falling behind!"
      end
    end
  end
end
