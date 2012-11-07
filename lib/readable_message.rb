require "readable_message/version"

module ReadableMessage
  
  class Formatter
    
    def initialize(message, *args)
      @message = message
      @messages = args.concat([:class, :message, :backtrace, :inspect]).flatten.collect { |arg| 
        Message.new(@message, arg) 
      }
    end
    
    def to_s
      wrapper { body }
    end
    
    private
    
    def body
      @messages.each { |msg| puts msg.to_s unless msg.to_s.nil? }
    end
    
    def wrapper
      puts "*" * 80
      yield if block_given?
      puts  "*" * 80
    end
    
  end
  
  class Message
    
    def initialize(str, method)
      @str, @method = str, method
    end
    
    def to_s
      @str.send(@method).to_s if @str.respond_to?(@method.to_sym)
    end
    
  end
  
end

module Kernel
  def readable(msg, *args)
    ReadableMessage::Formatter.new(msg, args).to_s
  end
end