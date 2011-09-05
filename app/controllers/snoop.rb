Base.controllers :snoop do
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:message]})
  end
  
  # regex ^snoop recommends (.+)$
  post :recommend do
    { :body => "http://abf-snoop.herokuapp.com/recommend?body=#{URI.escape(@message.message.to_s)}#jpg" }.to_json
  end
end