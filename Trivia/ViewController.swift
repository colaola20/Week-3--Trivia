//
//  ViewController.swift
//  Trivia
//
//  Created by Olha Sorych on 3/12/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var qustionTextView: UITextView!
    @IBOutlet weak var answ1Button: UIButton!
    @IBOutlet weak var answ2Button: UIButton!
    @IBOutlet weak var answ3Button: UIButton!
    @IBOutlet weak var answr4Button: UIButton!
    
    var currentQuestion: questionPick?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did load")
        
        let ctg = category.allCases.randomElement()
        
        let qstPick = questionPick(
            category: ctg!,
            question: ctg!.question)
        
        currentQuestion = qstPick
        
        updateUI()
    }
    
    func updateUI() {
        if let currentQuestion = currentQuestion {
            //questionLabel.text = "Question: \(String(currentQuestion.questionNum))/3"
            categoryLabel.text = currentQuestion.category.rawValue
            qustionTextView.text = currentQuestion.category.question
            answ1Button.setTitle(currentQuestion.category.options[0], for: .normal)
            answ2Button.setTitle(currentQuestion.category.options[1], for: .normal)
            answ3Button.setTitle(currentQuestion.category.options[2], for: .normal)
            answr4Button.setTitle(currentQuestion.category.options[3], for: .normal)
        }
    }

}
