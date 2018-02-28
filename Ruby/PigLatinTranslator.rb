# PigLatinTranslator.py
# Simple Programs
#
# Copyright © 2018 Ethan Dye. All rights reserved.

puts 'Welcome to Pig Latin Translator!'

def PigTrans()
    # Translates words into Pig Latin
    pyg = 'ay'
    puts 'Enter a word:'
    original = gets.strip
    
    if original.length > 0 && original.match(/^[[:alpha:]]+$/)
        word = original.downcase!
        first = word[0]
        second = word[1].upcase!
        newWord = second.to_s + word[2, word.length].to_s + first.to_s + pyg.to_s
        puts newWord
        else
        puts 'Not a valid word'
    end
end

def ContCheck()
    # Checks if Ruby should run PigTrans again
    puts 'Please type "continue" to translate another word or type "exit" to close:'
    runAgain = gets.strip
    runAgain.downcase!
    
    if runAgain == 'continue'
        PigTrans()
        ContCheck()
        elsif runAgain == 'exit'
        abort
        else
        puts 'Please choose to either continue or exit'
        ContCheck()
    end
end

PigTrans()
ContCheck()
