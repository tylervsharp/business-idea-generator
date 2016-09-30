def create_trends
  unparsed = GoogleTrendsParser.parse
  unparsed.each { |trend| Trend.create(title: trend[:title], date: trend[:date]) }
end

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
