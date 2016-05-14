require 'twitter'
 
namespace :twitter do
  desc "tweet hello"
  task :tweet, [:option] => [:environment] do |t, args|
    client = get_twitter_client
    ary = []
    client.search(args[:option], result_type: "popular").take(10).each do |tweet|
      ary.push({
        "user"            => tweet.user.name,
        "retweet_count"   => tweet.retweet_count,
        "favorite_count"  => tweet.favorite_count,
        "text"            => tweet.text
      })
    end  
  end
end
 
def get_twitter_client 
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "jiWvEvFcET5INs0EAMqaKum5X"
    config.consumer_secret     = "2er2FcPuQnsm7ouULxx7fRd0eZZfEpzC7I4Z4hfK3up7yGVlJU"
    config.access_token        = "2245487605-DKZkJBJg9OmwyfFNA3zSZeW5LapMHpp4jKKaAbX"
    config.access_token_secret = "hQCeLwnqei2eTOg1pWcWqMxKf8VnQaMuL0bMu3ilw8MLF"
   end
  client
end
