//
//  ViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        firstVC.modalPresentationStyle = .fullScreen
        firstVC.someString = "아기상어"
        present(firstVC, animated: true, completion: nil)
    }
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        secondVC.modalPresentationStyle = .fullScreen
        secondVC.someString = "아빠상어"
        // secondVC.mainLabel.text = "아빠상어" -> error
        // secondVC가 생성되는 순간과 stroyboard가 생성되는 순간이 다르다 나중에 매칭이됨 (viewDidload: 스토리보드와 코드가 메모리에 올라간 후 연결된 다음에 실행되는 함수)
        // 매칭이 되기 전에 접근하기 때문에 에러가 난다
        present(secondVC, animated: true, completion: nil)
    }
    
    
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        //   세그웨이에서 데이터를 전달하기 위해서는 prepare 함수를 override해줘야한다
        performSegue(withIdentifier: "toThirdVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 1. identifier 확인
        if segue.identifier == "toThirdVC" {
            // 2. 명확한 VC로 타입 캐스팅 하기
            let thirdVC = segue.destination as! ThirdViewController

            //3. 데이터 전달 하기
            thirdVC.someString = "엄마상어"
        }
        
        // 4) 스토리보드에서의 화면이동(직접 세그웨이, 데이터전달)
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "뚜루뚜뚜뚜"
        }
    }
    
    // 어떤 조건에 따라서 직접세그웨이를 실행할 때 이 함수에서 구현을 한다
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        <#code#>
    }

    
}

