module Buff
  module RubyEngine
    require_relative 'ruby_engine/version'

    extend self

    # @return [Boolean]
    def jruby?
      RUBY_ENGINE == 'jruby'
    end

    # @return [Boolean]
    def mri?
      RUBY_ENGINE == 'ruby'
    end

    # @return [Boolean]
    def rubinius?
      RUBY_ENGINE == 'rbx'
    end
    alias_method :rbx?, :rubinius?
  end
end
