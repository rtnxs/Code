MORSE_SYMB = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--..",
    " " => " ",
    "SOS" => "...---...",
    "." => ".-.-.-",
    "!" => "-.-.--"
}

def decodeMorse(morseCode)
  split_w = morseCode.strip.split(/ /)
  result = []

  split_w.map do |letter|
    result << MORSE_SYMB.key(letter)
  end

  result.join(" ").split("  ").map{|i| i.gsub(/\s+/, "")}.join(" ").upcase
end

def encodeMorse(str)
  result = []
  words = str.downcase.split("")

  words.map do |letter|
    result << MORSE_SYMB.values_at(letter)
  end

  result.join(" ")
end

#kata solution
# def decodeMorse(morseCode)
#   morseCode.strip.split('   ').map {|w| w.split.map{|g| MORSE_CODE[g]}.join}.join(' ')
# end



# def decodeMorse(morseCode)
#   morseCode.strip
#            .split('   ')
#            .map { |word| decodeWord(word) }
#            .join(' ')
# end

# private

# def decodeWord(morseCode)
#   morseCode.split
#            .map { |char| MORSE_CODE[char] }
#            .join
# end



# def decodeMorse(morseCode)
#   morseCode.strip.gsub(/[.-]*/) {|charCode| MORSE_CODE[charCode] }.gsub(/  ?([^\ ])/, '\1')
# end



# def decodeMorse(morseCode)
#   morseCode.strip
#   .gsub(/[.-]+/) { |code| MORSE_CODE[code] }
#   .gsub(/\s+/) { |space| space.length == 3? " ": ""}
# end



# def decodeMorse(morse_code)
#   morse_code.split('   ').map { | v |
#     v.split.map { |n| MORSE_CODE[n] }.join
#   }.join(' ').strip
# end



# def decodeMorse(morseCode)
#   morseCode.strip.gsub('   ',' # ').split(' ').map{|x| x == '#'? ' ' : MORSE_CODE[x]}.join
# end



# def decodeMorse(morseCode)
#   morseCode.strip.gsub(/ ?([.-]+?)( |$)/) { MORSE_CODE[$1] }
# end
