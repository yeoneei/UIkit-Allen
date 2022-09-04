//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 조연희 on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {
    /**
    @IBOutlet & @IBAction --> Attribute
    Attribute : 컴파일러가 알기 쉽게 자세한 정보를 알려주는 것
    IB = interface builder
     */
    // control + drag 하면 자동으로 생성 가능
    @IBOutlet weak var mainLable: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    // 관습적으로 button 파라미터를 sender라고한다
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainLable.text = "안녕햐세요"
        mainLable.backgroundColor = .green
        // #colorLiteral( -> color picker로 쉽게 색상을 선택할 수 있음
        mainLable.textColor = .white
        myButton.backgroundColor = .yellow
        myButton.setTitleColor(.black, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


