Base.controllers :fuck_yeah do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:query]})
  end
  
  # regex ^fuck yeah (.+)$
  post :show do
    query = @message.query.gsub(/\s+/,"%20")
    { :body => "http://abf-fuckyeah.herokuapp.com/#{query}#jpg" }.to_json
  end
  
  
  
end