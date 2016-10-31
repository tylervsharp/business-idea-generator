users = []

10.times {
  users << User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: 'password')
}

questions = []

questions_array = [
  "*** - What are your thoughts?",
  "If you had to compare *** to a character in a book, movie or TV show, who would you choose and why?",
  "Have you been following what is going on with *** lately?",
  "What is your opinion about ***?",
  "When you think about ***, what comes to mind?",
  "What is your favorite thing about ***?",
  "*** - why do you think so many people are following this right now?",
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
  "*** - if an island, what would that island look like?",
  "What are the best and worst parts about ***?",
  "If you had to sum up *** in three words, what would those words be?",
  "Is *** beneficial?",
  "What about *** do you find embarrasing?",
  "What about *** do you find disgusting?",
  "What are the advantages and disadvantages of ***?",
  "Do you think *** could be beneficial to you?",
  "If *** was an animal, which one would it be?",
  "If *** was a crime, what would the punishment be?",
  "What is the most annoying part of ***?",
  "If *** was a branch in the United States military, which branch would it be?",
  "If *** was a sport, what would the rules be?",
  "If *** was a dream, what elements would the dream have?",
  "*** is a store - what products would be sold there?",
  "What do you consider to be the biggest injustice about ***?",
  "What is the most creative thing about ***?",
  "What is the strangest thing about ***?",
  "If *** was a question, what would be the answer?",
  "If you had to compare *** to an emotion, which emotion would you choose?",
  "If *** was a superhero, what powers would it hold"?
  "If *** was a movie, who would the director be?",
  "If *** was a holiday, what traditions would be observed?",
  "Is *** making people more or less impatient?",
  "If *** was a bad habit, what would be the remedy?",
  "If *** was a diet, what food items would be allowed?",
  "If *** was a superstition, what practices would have to be followed to avoid bad luck?",
  "If *** was reincarnated in animal form, which animal would you see?",
  "If *** was a song, what would be the first verse?",
  "If you could alter one thing about ***, what would it be?"
]

  questions_array.each {|question| questions << Question.create!(body: question)}
