require "spec_helper"

describe ReadableMessage do
  
  subject { "my string" }
  it { should respond_to(:to_readable) }
  
end