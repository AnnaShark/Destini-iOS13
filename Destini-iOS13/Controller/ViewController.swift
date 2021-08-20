//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[0].storyTitle
        choice1Button.setTitle(storyBrain.stories[0].choice1.keys.first, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2.keys.first, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let nextQuestion = storyBrain.getNextQuestion(userAnswer)
        updateUI(nextQuestion) //impl
    }
    

    func updateUI(_ nextQuestion: Int){
        storyLabel.text = storyBrain.stories[nextQuestion].storyTitle
        choice1Button.setTitle(storyBrain.stories[nextQuestion].choice1.keys.first, for: .normal)
        choice2Button.setTitle(storyBrain.stories[nextQuestion].choice2.keys.first, for: .normal)
    }


}

