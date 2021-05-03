class PigLatinizer

  
    def piglatinize(input)
        string = input.to_s
        split_words = string.split(" ")
        iteration = split_words.map do |word|
            piglatinize_word(word)
        end
        iteration.join(" ")
    end


    def piglatinize_word(word)
        if word.match(/\A[aeiouAEIOU]/)
            word + "way"
            #or "#{word}way"
        else
            consonants = []
            consonants << word[0]

            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
              consonants << word[1] 
              if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                consonants << word[2] 
              end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
            #talk about consonants.length..-1...why?
        end

    end

    
end

