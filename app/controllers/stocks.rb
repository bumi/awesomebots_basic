Base.controllers :stocks do
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:symbol]})
  end
  
  # regex: /^\/stock (.+)/
  post :symbol, :provides => [:json] do
    url = "http://www.google.com/ig/api?stock=#{ @message.symbol }"
    doc = Nokogiri::XML(RestClient.get(url))
    company = doc.xpath('//company').first['data']
    exchange = doc.xpath('//exchange').first['data']
    currency = doc.xpath('//currency').first['data']
    last = doc.xpath('//last').first['data']

    { :body => "#{ company }: #{ last } #{ currency } @ #{ exchange }" }.to_json
  end
  
  
end
