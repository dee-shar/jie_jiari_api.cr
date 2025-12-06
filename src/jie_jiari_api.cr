require "json"
require "http/client"

class JieJiariApi
  API_PATH = "v1"
  def initialize()
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://api.jiejiariapi.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_holidays(year : Int32) : JSON::Any
    JSON.parse(@http_client.get(
      "/#{API_PATH}/holidays/#{year}", headers: @headers).body)
  end

  def get_weekends(year : Int32) : JSON::Any
    JSON.parse(@http_client.get(
      "/#{API_PATH}/weekends/#{year}", headers: @headers).body)
  end

  def get_workdays(year : Int32) : JSON::Any
    JSON.parse(@http_client.get(
      "/#{API_PATH}/holidays/#{year}", headers: @headers).body)
  end

  def check_is_holiday() : JSON::Any
    JSON.parse(@http_client.get(
      "/#{API_PATH}/is_holiday", headers: @headers).body)
  end
end
