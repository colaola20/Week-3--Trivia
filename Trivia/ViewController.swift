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
    var countQuestions = 0
    let amountQuestions = category.allCases.count
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did load")
        
        if countQuestions < amountQuestions{
            let ctg = category.allCases.randomElement()
            
            let qstPick = questionPick(
                category: ctg!,
                question: ctg!.question)
            
            currentQuestion = qstPick
            countQuestions += 1
            updateUI()
            
        }
        else {
            exit(0)
        }
        
    }
    
    func updateUI() {
        if let currentQuestion = currentQuestion {
            questionLabel.text = "Question: \(countQuestions)/\(amountQuestions)"
            categoryLabel.text = currentQuestion.category.rawValue
            qustionTextView.text = currentQuestion.category.question
            answ1Button.setTitle(currentQuestion.category.options[0], for: .normal)
            answ2Button.setTitle(currentQuestion.category.options[1], for: .normal)
            answ3Button.setTitle(currentQuestion.category.options[2], for: .normal)
            answr4Button.setTitle(currentQuestion.category.options[3], for: .normal)
        }
    }
    
    
    @IBAction func answ1Tapped(_ sender: Any) {
        viewDidLoad()
    }
    
    @IBAction func answ2Tapped(_ sender: Any) {
        viewDidLoad()
    }
    
    @IBAction func answ3Tapped(_ sender: Any) {
        viewDidLoad()
    }
    
    @IBAction func answ4Tapped(_ sender: Any) {
        viewDidLoad()
    }
}
