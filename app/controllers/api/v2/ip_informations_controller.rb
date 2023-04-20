module Api
  module V2
    class IpInformationsController < ApplicationController
      def index
        ip = params[:ip]
        if params[:force] || !params[:cache]
          result = FetcherService.new(ip).call
          Rails.cache.write(ip, result, expires_in: 1.hour)
          logger.info("Return response from ipRegistry #{ip}")
          render json: result
        else
          logger.info("Return response from cache #{ip}")
          render json: Rails.cache.read(ip)
        end
      end
    end
  end
end
