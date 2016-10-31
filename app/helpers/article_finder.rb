require 'date'

module ArticleFinder
  def self.request(keyword)
    uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => "",
      "q" => "#{keyword}",
      "begin_date" => (Date.today - 10).strftime("%Y%m%d"),
      "fl" => "web_url,headline,pub_date,news_desk"
      })
    request = Net::HTTP::Get.new(uri.request_uri)
    @result = JSON.parse(http.request(request).body)
    p @result.inspect
  end
end
