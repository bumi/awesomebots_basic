Base.controllers :should_do do
  
  before do 
    @message = AwesomeBotMessage.new(request.body,{:matches => [:word, :name, :action]})
  end
  
  # regex: /^(should|can|will|shall) (\w+) (.*)\??/i
  post :decide do
    name = @message.name.downcase == "i" ? @message.user_name : @message.name
    action = @message.action.delete("?")
    action.gsub!(/\bme\b/, @message.user_name)
    
    if [1,0][rand(2)] == 1 #should_do?
      "YEAH!! #{name} #{action}"
    else
      "NOOO!! #{name} don't!"
    end
  end
  
end