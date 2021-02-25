class BigramProblem

    attr_reader :text
    attr_accessor :histogram

    def initialize(text)
        @text = text
        @histogram = Hash.new(0)
    end 

    def clean_text
        text.downcase.gsub(/[\W\d_]+/, " ").gsub(/\s+/, " ").strip
    end 

    def generate_histogram 
        clean_text.split.each_cons(2) do |words|
            bigram = words.join(' ')
            histogram[bigram] += 1
        end 
    end 

    def show_histogram
        histogram
    end 

    def run 
        generate_histogram
        show_histogram
    end 
end 