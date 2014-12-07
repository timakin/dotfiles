require 'bundler/setup'
require 'spork'

Spork.prefork do
  require 'rspec'

  # Require all supporting libraries
  Dir['spec/support/**/*.rb'].each { |f| require File.expand_path(f) }

  # RSpec configuration
  RSpec.configure do |config|
    config.include Buff::Ignore::RSpec::PathHelpers

    config.expect_with(:rspec) { |c| c.syntax = :expect }
    config.mock_with(:rspec)
    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.filter_run(focus: true)
    config.run_all_when_everything_filtered = true

    config.before(:each) { clean_tmp_path! }
  end
end

Spork.each_run do
  require 'buff/ignore'
end
