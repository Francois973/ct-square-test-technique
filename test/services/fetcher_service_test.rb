require 'test_helper'
require 'minitest/autorun'
require 'webmock/minitest'

class FetcherServiceTest < ActiveSupport::TestCase
  WebMock.allow_net_connect!

  test 'should find information from ip address' do
    stub_request(:get, "https://api.ipregistry.co/37.174.71.166?key=#{ENV['API_KEY']}")
      .to_return(status: 200, body: file_fixture('informations_api').read.to_json)

    result = FetcherService.new('37.174.71.166').call

    assert_equal result[:ip], '37.174.71.166'
  end
end
