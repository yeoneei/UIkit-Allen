//
//  ViewController.swift
//  LoginProject
//
//  Created by 조연희 on 2022/09/29.
//

import UIKit

class ViewController: UIViewController {

    
    let emailTextFieldView = UIView() // 메모리에 올라왔을 뿐
    
    // 클로져로 만드는 방법
    let emailTextFeildView2: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
    }
    
    func makeUI(){
        emailTextFieldView.backgroundColor = .darkGray
        emailTextFieldView.layer.cornerRadius = 8
        emailTextFieldView.layer.masksToBounds = true
        
        // viewcontroller에 미리 view라는 것이 정의되어 있는 데
        // 이 view의 하위에 emailTextFieldView 뷰를 넣어줘야 한다
        view.addSubview(emailTextFieldView)
        
        // auto layout을 잡아줘야한다
        
        // 그냥 무작정 auto layout 설정하면 에러남
        // translatesAutoresizingMaskIntoConstraints = false 설정
        // xcode가 자동으로 잡아주는 오토레이아웃을 사용하지 않는다는 뜻
        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false
        
        // Anchor : leading, trailing, top, bottom, width, height
        // equalTo : 기준이 되는 뷰가 무엇인가
        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        // 높이는 기준이 없기 때문에 다른 생성자를 쓴다
        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }


}

