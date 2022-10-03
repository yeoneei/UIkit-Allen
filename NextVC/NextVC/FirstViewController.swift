//
//  FirstViewController.swift
//  NextVC
//
//  Created by 조연희 on 2022/10/03.
//

import UIKit

class FirstViewController: UIViewController {

    let mainLabel = UILabel()
    
    let backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var someString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    func configureUI(){
        mainLabel.text = someString
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        
        
        view.addSubview(mainLabel)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
        view.addSubview(backButton)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 78).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.backgroundColor = .gray
    }
    
    @objc func backButtonTapped(){
        dismiss(animated: true)
    }


}
