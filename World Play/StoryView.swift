//
//  StoryView.swift
//  World Play
//
//  Created by Millan Bhandari on 7/21/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    func writeStory() -> String {
        return "Good vacations are worth their weight in \(words.pluralNoun0)." +
        " A/an \(words.adjective0) summer vacation for you and your \(words.adjective1) family to visit the Rocky \(words.pluralNoun1) in Colorodo." +
        " The first time you see these \(words.adjective2) mountains, your \(words.partOfTheBody0) will thump \(words.adverb)." +
        "If you're into camping, fishing or \(words.verbEnding), visit Arizonas Grand Canyon enjoy a land of \(words.adjective3) and rich \(words.adjective4)." +
        " Upon sight of this mile-deep, magnificent 1.5 billion year old \(words.noun0) your \(words.partOfTheBody1) will drop open and your wont be able to catch your \(words.noun1)." +
        " And then there is the city of the Golden Gate \(words.noun2), San Francisco where you can spend all day watching a cable \(words.noun3) loaded with wide eyed \(words.pluralNoun2) or climb the city's \(words.adjective5) hills." +
        " A place made famous by Tony Bennets \(words.adjective6) rendition of 'I left my \(words.partOfTheBody2).' So will you!"
    }
}
    
struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}


