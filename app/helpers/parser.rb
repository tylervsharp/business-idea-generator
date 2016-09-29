require 'rss'
require 'open-uri'

module GoogleTrendsParser
  url = 'https://www.google.com/trends/hottrends/atom/feed'
  open(url) do |rss|
    feed = RSS::Parser.parse(rss)
    feed.items.each do |item|
      output << {title: item.title, date: item.pubDate}
    end
  end
end
