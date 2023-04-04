require 'net/http'

class FetcherService
  def initialize(ip)
    @ip = ip
  end

  def call
    url = URI("https://api.ipregistry.co/#{@ip}?key=#{ENV['API_KEY']}")
    response = Net::HTTP.get_response(url)
    JSON.parse(response.body)
  end
end
