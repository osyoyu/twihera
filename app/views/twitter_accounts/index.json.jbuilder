json.array!(@twitter_accounts) do |twitter_account|
  json.extract! twitter_account, :id
  json.url twitter_account_url(twitter_account, format: :json)
end
