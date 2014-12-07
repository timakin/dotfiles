module Buff::Ignore
  module RSpec
    module PathHelpers
      # The tmp path where testing support/workspaces are
      #
      # @return [Pathname]
      def tmp_path
        @_tmp_path ||= app_root.join('tmp').expand_path
      end

      private
        # The "root" of berkshelf
        #
        # @return [Pathname]
        def app_root
          @_app_root ||= Pathname.new(File.expand_path('../../..', __FILE__))
        end

        # Clean the temporary directories
        def clean_tmp_path!
          FileUtils.rm_rf(tmp_path)
          FileUtils.mkdir_p(tmp_path)
        end
    end
  end
end
