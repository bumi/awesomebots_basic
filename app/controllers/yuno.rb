Base.controllers :yuno do
  before do 
    @message = AwesomeBotMessage.new(request.body)
  end
  
  # regex: /^(.*)Y U NO(.+)$/i
  post :create do

    y_u_no_parts = @message.body.scan(/^(.*)Y U NO (.+)$/i).first

    image = "http://memecaptain.com/i?u=http%3A%2F%2Fmemecaptain.com%2Fy_u_no.jpg"
    image << "&tt=#{URI.encode_www_form_component(y_u_no_parts[0])}" unless y_u_no_parts[0].empty?
    image << "&tb=#{URI.encode_www_form_component("Y U NO #{y_u_no_parts[1]}")}"

    {:type => "TextMessage", :body => image}.to_json
  end

end
