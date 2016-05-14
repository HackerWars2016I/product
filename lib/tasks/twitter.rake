 
# bundle exec rake twitter:get["ポケモン"] 
# 上記の命令で " ポケモン " を検索します
namespace :twitter do
  desc "get hello"
  task :get, [:option] => [:environment] do |t, args|
    require 'twitter'

    puts "this is begin"
    client = get_twitter_client
    ary = []
    client.search(args[:option], result_type: "popular").take(10).each do |tw|
      puts "move"
      item = Tweet.new
      item.user = tw.user.name
      item.rt = tw.retweet_count
      item.fav = tw.favorite_count
      item.post = tw.text
      ary.push(item)
      item.save
    end 
    puts ary
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
