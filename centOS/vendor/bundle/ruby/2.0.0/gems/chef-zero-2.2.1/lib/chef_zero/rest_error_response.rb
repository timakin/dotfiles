module ChefZero
  class RestErrorResponse < Exception
    def initialize(response_code, error)
      @response_code = response_code
      @error = error
    end

    attr_reader :response_code
    attr_reader :error
  end
end
