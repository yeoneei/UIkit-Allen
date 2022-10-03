//
//  SecondViewController.swift
//  BMI
//
//  Created by 조연희 on 2022/10/04.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmiNumber: Double?
    var adviceString: String?
    var bmiColor: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 전화면에서 전달받은 데이터들을 통해 셋팅
        bmiNumberLabel.text = "\(bmiNumber!)"
        bmiNumberLabel.backgroundColor = bmiColor
        adviceLabel.text = adviceString
        
        configureUI()
    }
    // UI셋팅
    func configureUI() {
        bmiNumberLabel.clipsToBounds = true
        bmiNumberLabel.layer.cornerRadius = 8
        //bmiNumberLabel.backgroundColor = UIColor.brown
        
        backButton.layer.cornerRadius = 5
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
}
