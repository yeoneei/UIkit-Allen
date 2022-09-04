//
//  ViewController.swift
//  Binggo
//
//  Created by 조연희 on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    var comPick: Int = Int.random(in: 0...10)
    var myPick: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        let number = sender.currentTitle!
        print("number check =====>\(number)")
        
        myPick = Int(number)!
    }
    
    @IBAction func computedNumber(_ sender: Any) {
        if myPick < comPick{
            resultLabel.text = "UP"
        } else if myPick > comPick{
            resultLabel.text = "DOWN"
        } else {
            resultLabel.text = "Binggo"
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        resultLabel.text = ""
        myPick = -1
        comPick = Int.random(in: 0...10)
    }
    
}

