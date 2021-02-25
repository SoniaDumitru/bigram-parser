require_relative 'bigramproblem.rb'

puts 'Enter your text:'

text = gets.to_s
if text.split.length == 1
    puts 'Your text must contain more than 2 words'
else 
    histogram = BigramProblem.new(text).run
    histogram.each do |bigram, sum|
        puts "\'#{bigram}\' #{sum}"
    end
end 