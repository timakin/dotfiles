# Buff::RubyEngine
[![Gem Version](https://badge.fury.io/rb/buff-ruby_engine.png)](http://badge.fury.io/rb/buff-ruby_engine)
[![Build Status](https://travis-ci.org/RiotGames/buff-ruby_engine.png?branch=master)](https://travis-ci.org/RiotGames/buff-ruby_engine)

A mixin for querying the platform running Ruby

## Installation

Add this line to your application's Gemfile:

    gem 'buff-ruby_engine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install buff-ruby_engine

## Usage

Using it as a mixin

    require 'buff/ruby_engine'

    class PowerUp
      include Buff::RubyEngine
    end

    power_up = PowerUp.new
    power_up.mri?       #=> true
    power_up.jruby?     #=> false
    power_up.rubinius?  #=> false

Using it as a module

    require 'buff/ruby_engine'

    Buff::RubyEngine.mri?       #=> true
    Buff::RubyEngine.jruby?     #=> false
    Buff::RubyEngine.rubinius?  #=> false

# Authors and Contributors

* Jamie Winsor (<reset@riotgames.com>)

Thank you to all of our [Contributors](https://github.com/RiotGames/buff-ruby_engine/graphs/contributors), testers, and users.
