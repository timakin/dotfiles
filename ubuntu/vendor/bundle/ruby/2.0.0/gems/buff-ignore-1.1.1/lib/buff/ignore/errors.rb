module Buff::Ignore
  # @abstract Exceptions from Buff::Ignore
  class BuffIgnoreError < StandardError; end

  # Raised when an ignore file cannot be found
  class IgnoreFileNotFound < BuffIgnoreError
    # @param [String] path
    #   the path where the ignore file was not found
    def initialize(path)
      @path = path
    end

    # @return [String]
    def to_s
      "No ignore file found at '#{File.expand_path(@path)}'!"
    rescue
      "No ignore file found at '#{@path}'!"
    end
  end
end
