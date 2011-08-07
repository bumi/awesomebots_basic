Base.controllers :aws_status do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:feed]})
  end
  
  # regex: /^\/status ec2/
  post :from_feed, :provides => [:json] do
    url = "http://status.aws.amazon.com/rss/#{@message.feed.upcase}.rss"
    doc = Nokogiri::XML(RestClient.get(url))
    title = doc.xpath("//item[1]/title").first.content
    description = doc.xpath("//item[1]/description").first.content
    pub_date = doc.xpath("//item[1]/pubDate").first.content
    
    {:type=> "PasteMessage", :body => "#{pub_date}:\n#{title}:\n------------\n#{description}"}.to_json
  end
  
  
end