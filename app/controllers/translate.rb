Base.controllers :translate do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:sentence]})
  end
  
  #regex: \/translate (.*)
  post "/translate" do
    response = RestClient.get 'https://ajax.googleapis.com/ajax/services/language/translate', {:params => {:v => "1.0", :q => @message.sentence, :langpair => "|en"}}
    
    data = JSON.parse(response)
    
    if data['responseStatus'] == 200
      "translated from #{data['responseData']['detectedSourceLanguage']}: #{data['responseData']['translatedText']}"
    else
      "couldn't translate: #{data['responseDetails']}"
    end
  end
  
end