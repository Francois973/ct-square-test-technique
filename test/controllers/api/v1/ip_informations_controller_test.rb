require 'test_helper'
require 'minitest/autorun'
require 'webmock/minitest'

module Api
  module V1
    class IpInformationsControllerTest < ActionDispatch::IntegrationTest
      WebMock.allow_net_connect!

      test 'should send flatten result after fetcher service' do
        stub_request(:get, "https://api.ipregistry.co/37.174.71.166?key=#{ENV['API_KEY']}")
          .to_return(status: 200, body: file_fixture('ip_informations.json').read)
        get api_v1_ip_informations_path(ip: '37.174.71.166')
        binding.pry
        assert_response :success
        assert_response 200
        body = JSON.parse(response.body)
        assert body == file_fixture('informations_api.json').read
      end
    end
  end
end
