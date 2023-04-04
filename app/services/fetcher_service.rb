require 'net/http'

class FetcherService
  def initialize(ip)
    @ip = ip
  end

  def call
    url = URI("https://api.ipregistry.co/#{@ip}?key=#{ENV['API_KEY']}")
    response = Net::HTTP.get_response(url)
    result = JSON.parse(response.body)

    flatten_result(result)
  end

  def flatten_result(result)
    result.each_with_object({}) do |(key, value), acc|
      if value.is_a? Hash
        next flatten_result(value).each do |k, v|
          acc["#{key}.#{k}"] = v
        end
      end
      acc[key] = value
    end
  end
end
