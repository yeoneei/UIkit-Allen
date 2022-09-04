//
//  ViewController.swift
//  RPSGame
//
//  Created by 조연희 on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLable: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    
    @IBOutlet weak var myChoiceLabel: UILabel!
    var comChoice: RPS = RPS(rawValue: Int.random(in: 0...2))!
    var myChoice: RPS = .rock
    
    //앱의 화면이 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = #imageLiteral(resourceName: "ready")
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
    }

    @IBAction func rpaButtonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else{
            return
        }
        
        switch title{
        case "가위":
            myChoice = .scissors
        case "바위":
            myChoice = .rock
        case "보":
            myChoice = .paper
        default:
            break
        }
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        switch comChoice{
        case .rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case .paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case .scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        switch myChoice{
        case .rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case .paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case .scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        if comChoice == myChoice {
            mainLable.text = "비겼다"
        }else if comChoice == .rock && myChoice == .paper{
            mainLable.text = "이겼다"
        }else if comChoice == .paper && myChoice == .scissors{
            mainLable.text = "이겼다"
        }else if comChoice == .scissors && myChoice == .rock{
            mainLable.text = "이겼다"
        }else {
            mainLable.text = "졌다"
        }
        
    }
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = #imageLiteral(resourceName: "ready")
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
        mainLable.text = "선택하세요"
        comChoice = RPS(rawValue: Int.random(in: 0...2))!
    }
}

