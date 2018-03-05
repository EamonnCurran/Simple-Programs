// PigLatinTranslator.swift
// Simple Programs
//
// Copyright © 2018 Ethan Dye. All rights reserved.

import Foundation

print("Welcome to Pig Latin Translator!")

func getInput() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let strData = String(data: inputData, encoding: String.Encoding.utf8)!
    return strData.trimmingCharacters(in: CharacterSet.newlines)
}
extension String {
    var length: Int {
        return self.characters.count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

func doHaveNum(string: String) -> Bool {
    let numberRegEx = ".*[0-9]+.*"
    let testCase = NSPredicate(format: "SELF MATCHES %@", numberRegEx)
    let containsNumber = testCase.evaluate(with: string)
    return containsNumber
}

func pigTrans() {
    /* Translates words into Pig Latin */
    let pyg = "ay"
    print("Enter a word:")
    let original = getInput()
    if original.count > 0 && doHaveNum(string: original) {
        let word = original.lowercased()
        let first = word[0]
        let second = word[1].uppercased()
        let newWord = second + word.substring(fromIndex: 1) + first + pyg
        print(newWord)
    } else {
        print("Not a valid word")
    }
}

func contCheck() {
    /* Checks if Swift should run PigTrans again */
    print("Please type 'continue' to translate another word or type 'exit' to close:")
    let runAgain = getInput().lowercased()

    if runAgain == "continue" {
        pigTrans()
        contCheck()
    } else if runAgain == "exit" {
        return
    } else {
        print("Please choose to either continue or exit")
        contCheck()
    }
}
pigTrans()
contCheck()
