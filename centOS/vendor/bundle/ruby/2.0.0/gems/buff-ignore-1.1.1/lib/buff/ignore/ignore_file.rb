module Buff
  module Ignore
    # A Ruby representation of an ignore file
    class IgnoreFile
      # Regular expression to match comments or plain whitespace
      #
      # @return [Regexp]
      COMMENT_OR_WHITESPACE = /^\s*(?:#.*)?$/.freeze

      # The path to the ignore file
      #
      # @return [String]
      attr_reader :filepath

      # Create a new ignore file from the given filepath
      #
      # @raise [IgnoreFileNotFound]
      #   if the given filepath does not exist
      #
      # @param [String, Pathname] filepath
      #   the path to the ignore file
      # @param [Hash] options
      #   a list of options to pass to the ignore file
      #
      # @option [#to_s] options :base
      #   the base directory to apply ignores from
      def initialize(filepath, options = {})
        raise IgnoreFileNotFound.new(filepath) unless filepath && File.exists?(filepath)

        @filepath = File.expand_path(filepath)
        @options  = options
      end

      # Apply the ignore to the list, returning a new list of filtered files
      #
      # @example
      #   files = ['Gemfile', 'Gemfile.lock', 'bacon', 'eggs']
      #   ignore.apply(files) #=> ['bacon', 'eggs']
      #
      # @see IgnoreFile#apply!
      #
      # @param [Array] list
      #   the list of files to apply the ignore to
      #
      # @return [Array]
      #   the sanitized file list
      def apply(list)
        tmp = list.dup
        apply!(tmp)
        tmp
      end

      # Destructively remove all files from the given list
      #
      # @param [Array] list
      #   the list of files to apply the ignore to
      #
      # @return [Array, nil]
      #   the elements removed, or nil if none were removed
      def apply!(list)
        list.reject! do |item|
          item.strip.empty? || ignored?(item)
        end
      end

      # Determine if a given filename should be ignored
      #
      # @param [String] filename
      #   the file to match
      #
      # @return [Boolean]
      #   true if the file should be ignored, false otherwise
      def ignored?(filename)
        base = File.expand_path(options[:base] || File.dirname(filepath))
        basename = filename.sub(base + File::SEPARATOR, '')

        ignores.any? { |ignore| File.fnmatch?(ignore, basename) }
      end

      private
        # The list of options
        #
        # @return [Hash]
        attr_reader :options

        # The parsed contents of the ignore file
        #
        # @return [Array]
        def ignores
          @ignores ||= File.readlines(filepath).map(&:strip).reject do |line|
            line.empty? || line =~ COMMENT_OR_WHITESPACE
          end
        end
    end
  end
end
