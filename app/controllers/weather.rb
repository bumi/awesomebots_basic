# encoding: utf-8
Base.controllers :weather do

  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:city]})
  end
  
  post "get", :provides => [:json] do
    doc = Nokogiri::XML(RestClient.get('http://www.google.com/ig/api', {:params => {:weather => @message.city}}))
    unless doc.css('problem_cause').empty?
      return "couldn't fetch the weather information"
    end
    city = doc.css('weather forecast_information city').first['data']
    temp_c = doc.css('weather current_conditions temp_c').first['data']
    condition = doc.css('weather current_conditions condition').first['data']
    humidity = doc.css('weather current_conditions humidity').first['data']
    wind = doc.css('weather current_conditions wind_condition').first['data']
    
    report = %Q{weather report for #{city}:
----------------------------------------------------
currently: #{temp_c} degree celsius, #{condition}, #{humidity}, #{wind}
}
    forecasts = doc.css('weather forecast_conditions')
    forecasts.each do |n|
      day = n.css('day_of_week').first['data']
      low = (n.css('low').first['data'].to_i - 32) * 5/9
      high = (n.css('high').first['data'].to_i - 32) * 5/9
      condition = n.css('condition').first['data']
      report << "\n#{day}: high: #{high}, low: #{low}, #{condition}"
    end
    {:type=> "PasteMessage", :body => report}.to_json
  end
  
end