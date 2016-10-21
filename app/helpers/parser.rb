require 'rss'
require 'open-uri'

module GoogleTrendsParser
  def self.parse
    url = 'https://www.google.com/trends/hottrends/atom/feed'
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      feed.items.map do |item|
          { title: item.title, date: item.pubDate }
      end
    end
  end
end
