require_relative '../spec/spec_helper.rb'
require_relative '../bigramproblem.rb'

histogram = {
    "the quick" => 2,
    "quick brown" => 1,
    "brown fox" => 1,
    "fox and" => 1,
    "and the" => 1,
    "quick blue" => 1,
    "blue hare" => 1,
}

describe '#clean_text' do 
    it 'downcase all letters in enterd text' do 
        text = 'LoWer CaSe TeXt'
        bigramproblem_instance = BigramProblem.new(text)
        expect(bigramproblem_instance.clean_text).to eq('lower case text')
    end 

    it 'removes all non characters besides white spaces' do 
        text = '#remove[][]87|]]white[+__0%&^&^%@&$@&^hey()@@}@|{}\[ hello'
        bigramproblem_instance = BigramProblem.new(text)
        expect(bigramproblem_instance.clean_text).to eq('remove white hey hello')
    end 

    it 'removes extra whitespaces' do 
        text = '  text     has      extra     spaces'
        bigramproblem_instance = BigramProblem.new(text)
        expect(bigramproblem_instance.clean_text).to eq('text has extra spaces')
    end 
end 


describe '#generate_histogram' do
    it 'generates a histogram with bigrams inside' do
        text = 'The quick brown fox and the quick blue hare.'
        bigramproblem_instance = BigramProblem.new(text)
        expect(bigramproblem_instance.histogram).to eq({})
        bigramproblem_instance.generate_histogram
        expect(bigramproblem_instance.histogram).to eq(histogram)
    end
end

describe '#show_histogram' do 
    it 'displays the final histogram' do 
        text = 'The quick brown fox and the quick blue hare.'
        bigramproblem_instance = BigramProblem.new(text)
        bigramproblem_instance.generate_histogram
        expect(bigramproblem_instance.show_histogram).to eq(histogram)
    end 
end 

describe '#run' do
    it 'puts final result' do 
        text = 'The quick brown fox and the quick blue hare.'
        bigramproblem_instance = BigramProblem.new(text)
        expect(bigramproblem_instance.run).to eq(histogram)
    end 
end 
