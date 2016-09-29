users = []

10.times {
  users << User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: 'password')
}

questions = []

questions_array = [
  "What are your thoughts about ***?",
  "If you had to compare *** to a character in a book, movie or TV show, who would you choose and why?",
  "Have you been following what is going on with *** lately?",
  "What is your opinion about ***?",
  "When you think about ***, what comes to mind?",
  "What is your favorite thing about ***?",
  "Why do you think so many people are following *** right now?",
  "What about the human condition makes *** so interesting to so many?",
  "What about *** do you find interesting?",
  "What about *** annoys you?",
  "What do you find beautiful about ***?",
  "What about *** defies explanation?",
  "What are the societal benefit to *** (if any)?",
  "If *** had a mortal enemy, who/what would it be?",
  "Why do you think people like *** so much?",
  "When you think about ***, what comes to mind?",
  "Why do you think *** is so popular right now?",
  "If *** was a movie, what would the title be?",
  "What do you find strange about ***?",
  "If *** was a country, who would be the first president?",
  "If *** was pieces of clothing, what attributes would it have?",
  "What do you think is crazy about ***?",
  "If *** was an island, what would it look like?",
  "What are the best and worst parts about ***?",
  "If you had to sum up *** in three words, what would they be?",
  "Is *** beneficial?",
  "What about *** do you find embarrasing?",
  "What about *** do you find disgusting?"]

  questions_array.each {|question| questions << Question.create!(body: question)}
