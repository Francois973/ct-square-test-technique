require 'test_helper'
require 'minitest/autorun'

module Api
  module V1
    class IpInformationsControllerTest < ActionDispatch::IntegrationTest
      test 'should send domain' do
        get '/api/v1/ip_informations'

        assert_equal '{"company.domain":"ct-square.com"}', response.body
      end
    end
  end
end
