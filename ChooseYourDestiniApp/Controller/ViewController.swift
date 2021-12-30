//
//  ViewController.swift
//  ChooseYourDestiniApp
//
//  Created by Ilya Kokorin on 30.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var story = StoryBrain()
    var userChoice : String = ""
    
    var progress = 0
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = story.getTitle()
        choiceButton1.setTitle(story.getChoice1(), for: .normal)
        choiceButton2.setTitle(story.getChoice2(), for: .normal)
        
        choiceButton1.alpha = 0.9
        choiceButton2.alpha = 0.9
        choiceButton1.layer.cornerRadius = 20
        choiceButton2.layer.cornerRadius = 20
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.titleLabel!.text
        story.checkAnswer(userChoice!)
        updateUI()
    }
    
}
