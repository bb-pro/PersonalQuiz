//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Bektemur Mamashayev on 20/02/23.
//

import UIKit

final class ResultViewController: UIViewController {
    var answers: [Answer]!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
        
    }
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
