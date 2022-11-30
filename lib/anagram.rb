# require "pry"

class Anagram
    attr_reader :word

    def initialize(input)
        @word = input
    end

    def match(arr)
        word_letters = @word.split("")
        arr.filter { |wd| wd.split("").sort == word_letters.sort }
    end
end

# binding.pry
diaper = Anagram.new('diaper')
diaper.match(%w[hello world zombies pants dipper])

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
# listen.match(["enlists", "google", "inlets", "banana"])

ba = Anagram.new('ba')
ba.match(%w[ab abc bac'])

allergy = Anagram.new('allergy')
allergy.match(%w[gallery ballerina regally clergy largely leading])