module Api
  module V1
    class IpInformationsController < ApplicationController
      def index
        ip = params[:ip]
        domain = { "company.domain": 'ct-square.com' }
        render json: domain
      end
    end
  end
end
