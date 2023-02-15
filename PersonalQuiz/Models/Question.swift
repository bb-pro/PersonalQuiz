//
//  Question.swift
//  PersonalQuiz
//
//  Created by Bektemur Mamashayev on 15/02/23.
//

import Foundation

struct Question {
    let title: String
    let resposeType: ResponseType
    let answers: [Answer]
    
    func getQuestions() -> [Question] {
        [
        Question(
            title: "Какую пищу вы предпочиаете?",
            resposeType: .single,
            answers: [
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Стейк", animal: .dog)]
        ),
        Question(
            title: "Что вам нравится больше?",
            resposeType: .single,
            answers: []
        ),
        Question(
            title: "Любите ли вы поездки?",
            resposeType: .single,
            answers: []
        )
        
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definiton: String {
        switch self {
            
        case .dog:
            return ""
        case .cat:
            return ""
        case .turtle:
            return ""
        case .rabbit:
            return ""
        }
    }
}
