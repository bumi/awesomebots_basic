Base.controllers :twitter do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:twitter_name]})
  end
  
  # regex: /^\/lto (.+)/
  post :lto, :provides => [:json] do
    id = Twitter.user_timeline(@message.twitter_name).first.id
    tweet = "http://twitter.com/#{@message.twitter_name}/status/#{id}"
    {:type => "TweetMessage", :body => tweet}.to_json
  end
end