//
//  Trivia.swift
//  Trivia
//
//  Created by Olha Sorych on 3/12/25.
//

import Foundation
struct questionPick {
    //let questionNum: Int
    let category: category
    let question: String
}

enum category: String, CaseIterable {
    case entMusic = "Entertainment: Music"
    case entVG = "Entertainment: Video Games"
    case history = "History"
    
    var question: String {
        switch self {
        case .entMusic:
            return "What is the last song on the first Panic! At the Disco album?"
        case .entVG:
            return "What was the first weapon pack for 'PAYDAY'?"
        case .history:
            return "Which of these founding fathers of the United States of America later bacame president?"
        }
    }
    
    var options: Array<String> {
        switch self {
        case .entMusic:
            return ["I Write Sins Not Tragedies",
                    "Lying Is The Most Fun A Girl Can Have Without Taking Her Clothes Off",
                    "Nails for Breakfast, Tacks for Snacks",
                    "Build God, Then We'll Talk"]
            
        case .entVG:
            return ["The Gage Weapon Pack #1",
                    "The Overkill Pack",
                    "The Gage Chivalry Pack",
                    "The Gage Historical Pack"]
            
        case .history:
            return ["Roger Sherman",
                    "James Monroe",
                    "Samuel Adams",
                    "Alexander Hamilton"]
        }
    }
}


