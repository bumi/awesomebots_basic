Base.controllers :translate do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:language, :sentence]})
  end
  
  #regex: ^\/translate\s?(?:|to (.{2})) (.*)
  post "/translate" do
    language = @message.language.blank? ? "en" : @message.language
    response = RestClient.get 'https://ajax.googleapis.com/ajax/services/language/translate', {:params => {:v => "1.0", :q => @message.sentence, :langpair => "|#{language}"}}
    
    data = JSON.parse(response)
    
    if data['responseStatus'] == 200
      "translated from #{data['responseData']['detectedSourceLanguage']}: #{data['responseData']['translatedText']}"
    else
      "couldn't translate: #{data['responseDetails']}"
    end
  end
  
end