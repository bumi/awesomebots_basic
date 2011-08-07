class AwesomeBotMessage < Hash
  
  def initialize(body, options={})
    body = body.read if body.respond_to?(:read)
    self.merge!(JSON.parse(body))
    options[:matches].each_with_index do |name,index|
      self[name] = self["match"][index+1]
    end if options[:matches]
  end
  
  def method_missing(name, *args)
    return self[name.to_s] if key?(name.to_s)
    return self[name.to_sym] if key?(name.to_sym)
    nil
  end
  
end