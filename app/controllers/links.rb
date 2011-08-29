Base.controllers :links do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:url]})
  end
  
  # regex: /(https?:\/\/\S+)/
  post :details do
    doc = Pismo::Document.new @message.url
    
    if doc.titles.last.present?
      details = %Q{About #{@message.url}:\n-----------\n#{doc.titles.last}:\n#{doc.lede}\n}
    else
      details = "" # send an empty body to not paste anything
    end
    {:type => "PasteMessage", :body => details}.to_json
  end

  
end