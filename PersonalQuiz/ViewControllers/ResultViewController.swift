//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Bektemur Mamashayev on 20/02/23.
//

import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var characterLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var chosenAnswers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        showResult()
    }
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
        
    }
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
//MARK: - Private Methods
private extension ResultViewController {
    /// Shows result of the quiz
    ///
    /// Updates the screen and shows the most frequent animal character with definiton
    func showResult() {
        guard let animal = getMostFrequentAnimal() else { return }
        characterLabel.text = "Вы - \(animal.rawValue)"
        definitionLabel.text = animal.definition
    }

    func getMostFrequentAnimal() -> Animal? {
    
        let animals: [Animal] = chosenAnswers.map { $0.animal }
        
        
        var animalCountDict: [Animal: Int] = [:]
        var mostFrequentAnimal: Animal?
        var maxCount = 0
        
        for animal in animals {
            let count = (animalCountDict[animal] ?? 0) + 1
            animalCountDict[animal] = count
            
            if count > maxCount {
                mostFrequentAnimal = animal
                maxCount = count
            }
        }
        return mostFrequentAnimal
    }
}
