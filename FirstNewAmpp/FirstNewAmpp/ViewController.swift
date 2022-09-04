//
//  ViewController.swift
//  FirstNewAmpp
//
//  Created by 조연희 on 2022/09/04.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    weak var timer: Timer?
    
    var number: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }

    func configureUI(){
        number = 0
        mainLabel.text = "초를 선택하세요"
        // 슬라이더 가운데 설정
        slider.setValue(0.5, animated: true)
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        number = Int(sender.value * 60)
        mainLabel.text = "\(number) 초 "
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ [self] _ in
            // weak self로 안써도 되는 이유는?
            // timer 자체가 weak로 선언되어 있음, weak이 아닐경우는 strong cycle이 나타나지 x
            if number > 0 {
                number -= 1
                slider.value = Float(number) / 60
                mainLabel.text = "\(number) 초"
            }else {
                number = 0
                configureUI()
                timer?.invalidate()
                AudioServicesPlayAlertSound(SystemSoundID(1322))
            }
           
        }
        
        // 이렇게 구현 할 수도 있다!
        // timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(doSomethingAfter1Second), userInfo: nil, repeats: true)
    }
    
    /*
    @objc func doSomethingAfter1Second(){
        // 1초마다 진행할 내용 구현
    }*/
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        configureUI()
        timer = nil
    }
    
    
}

