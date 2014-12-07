require 'buff/ruby_engine'

module Kernel
  include Buff::RubyEngine
end

class Object
  # Re-include since the Kernel module was altered
  include Kernel
end
