def create_trends
  unparsed = GoogleTrendsParser.parse
  unparsed.each { |trend| Trend.create(title: trend[:title], date: trend[:date]) }
end

# def trend_articles(keyword, trend_id)
#   articles = ArticleFinder.request(keyword)
#   articles[:docs].each { |article| Article.create(url: article[:web_url], headline: article[:headline][:main], date: Date.strptime(article[:pub_date], '%FT%T%:z'))}
# end

def trend_in_question
  random_question.gsub("***",random_trend)
end

def random_question
  ids = Question.pluck(:id)
  Question.find(ids.sample).body
end

def random_trend
  ids = Trend.pluck(:id)
  Trend.find(ids.sample).title
end
