def create_prompts
  prompts = []
  5.times { prompts << trend_in_question }
  return prompts
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
