module Api
  module V1
    class IpInformationsController < ApplicationController
      def index
        ip = params[:ip]
        if !params[:force] || params[:cache] && $redis.get(ip)
          logger.info("Return response from cache #{ip}")
          render json: $redis.get(ip)
        else
          logger.info("Return response from ipRegistry #{ip}")
          result = FetcherService.new(ip).call
          $redis.set(ip, result)
          render json: result
        end
      end
    end
  end
end
