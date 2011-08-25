Base.controllers :fuck_yeah do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:query]})
  end
  
  # regex ^fuck yeah (.+)$
  post :show, :with => :id do
    { :body => "http://fuckyeah.herokuapp.com/#{@message.query}#jpg" }
  end
  
  
  
end