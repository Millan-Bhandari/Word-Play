//
//  ContentView.swift
//  World Play
//
//  Created by Millan Bhandari on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "Plural Noun", variable: $words.pluralNoun0)
                    CustomTextField(placeholder: "Plural Noun", variable: $words.pluralNoun1)
                    CustomTextField(placeholder: "Plural Noun", variable: $words.pluralNoun2)
                }
                HStack {
                    CustomTextField(placeholder: "Noun", variable: $words.noun0)
                    CustomTextField(placeholder: "Noun", variable: $words.noun1)
                    CustomTextField(placeholder: "Noun", variable: $words.noun2)
                    CustomTextField(placeholder: "Noun", variable: $words.noun3)
                }
                HStack {
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective3)
                }
                HStack {
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective4)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective5)
                    CustomTextField(placeholder: "Body Part", variable: $words.partOfTheBody0)
                    CustomTextField(placeholder: "Body Part", variable: $words.partOfTheBody1)
                    
                }
                HStack {
                    CustomTextField(placeholder: "Body Part", variable: $words.partOfTheBody2)
                    CustomTextField(placeholder: "Adverb", variable: $words.adverb)
                }
                HStack {
                    CustomTextField(placeholder: "Verb ending in ING ", variable: $words.verbEnding)
                }
                CustomText(text: "Word Play")
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var pluralNoun0 = ""
    var pluralNoun1 = ""
    var pluralNoun2 = ""
    
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    var adjective4 = ""
    var adjective5 = ""
    var adjective6 = ""
    
    var partOfTheBody0 = ""
    var partOfTheBody1 = ""
    var partOfTheBody2 = ""
    
    var adverb = ""
    
    var verbEnding = ""
    
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
    
}

struct CustomText: View {
    let text : String
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
    }
}
