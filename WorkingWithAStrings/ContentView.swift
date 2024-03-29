//
//  ContentView.swift
//  WorkingWithAStrings
//
//  Created by ramil on 22.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        let word = "swift"
        let checker = UITextChecker()
        let range = NSRange(location: 9, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        let allGood = misspelledRange.location == NSNotFound
        
        
        // Step 1
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        // Step 2
        let input2 = """
                     a
                     b
                     c
                     """
        let letters2 = input2.components(separatedBy: "\n")
        
        // Random option element
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        let letter2 = letters2.randomElement()
        let trimmed2 = letter2?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        return Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
