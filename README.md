# Task: 
Create an application that can take as input any text and outputs a histogram of the bigrams in the text. Description: A bigram is any two adjacent words in the text disregarding case and punctuation. A histogram is the count of how many times that particular bigram occurred in the text.

# Solution for Bigram Parsing Problem:

When a User runs the app from the CLI a promt with a "Enter your text:" pops up, after the text is entered the histogram is generated and it shows how many times that particular bigram occurred in the text.

# Programming Language Used: Ruby

# To run the app and the tests please follow these steps:

1. cd into bigram_problem_gohealth
2. bundle install
3. ruby enter_text.rb
    -> enter your text (ex: 'The quick brown')
    -> press ENTER/RETURN
    -> results will pop up (ex:"the quick" 2, "quick brown" 1 )
4. rspec tests/test_bigramproblem.rb


