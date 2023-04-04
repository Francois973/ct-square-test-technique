module Api
  module V1
    class IpInformationsController < ApplicationController
      def index
        ip = params[:ip]
        @result = FetcherService.new(ip).call
        render json: @result
      end
    end
  end
end
