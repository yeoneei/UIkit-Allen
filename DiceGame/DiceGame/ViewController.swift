//
//  ViewController.swift
//  DiceGame
//
//  Created by 조연희 on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonTapped(_ sender: Any) {
        // 내가 생각했던 방법
        /*
        let fist = Int.random(in: 0...5)
        firstImageView.image = diceArray[fist]
        
        let second = Int.random(in: 0...5)
        secondImageView.image = diceArray[second]
         */
        
        //강의 방법
        firstImageView.image = diceArray.randomElement()
        secondImageView.image = diceArray.randomElement()
        
    }
    
}

