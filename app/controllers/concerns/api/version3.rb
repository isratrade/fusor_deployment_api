module Api
  module Version3
    extend ActiveSupport::Concern

    def api_version
      '3'
    end

  end
end