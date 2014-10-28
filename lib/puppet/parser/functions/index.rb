module Puppet::Parser::Functions
  newfunction('index', :type => :rvalue, :arity => 2) do |args|
    raise(Puppet::ParserError, "This function requires an array") if args[0] != Array

    if  args[0].member?(args[1])
      return true
    else
      return false
    end
  end
end
