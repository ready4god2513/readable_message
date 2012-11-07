require "readable_exception/version"

module ReadableException
  
  class Formatter < Struct.new(:exception)
    
    def to_s
      wrapper { messages }
    end
    
    private
    
    def messages
      puts exception.class.name if exception.respond_to?(:class)
      puts exception.message if exception.respond_to?(:message)
      puts exception.backtrace.join("\n") if exception.respond_to?(:backtrace)
      puts exception.inspect
    end
    
    def wrapper
      puts "*" * 80
      yield if block_given?
      puts "*" * 80
    end
    
  end
  
end

def console(e)
  ReadableException::Formatter.new(e).to_s
end