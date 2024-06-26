//
//  ViewController.swift
//  CalculaterAPP
//
//  Created by 유민우 on 6/26/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var number: Int = 12345 // 라벨에 들어갈 프로퍼티
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        view.backgroundColor = .black // 뷰의 백그라운드 색상은 검정색
        
        // 수식이 들어갈 라벨
        let label = UILabel()
        label.text = "\(number)"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .right
        
        // 스택뷰 1
        let stackView1 = UIStackView()
        stackView1.axis = .horizontal
        stackView1.backgroundColor = .black
        stackView1.spacing = 10
        stackView1.distribution = .fillEqually
        
        // 버튼 숫자 7
        let button1 = UIButton()
        button1.setTitle("7", for: .normal)
        button1.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button1.frame.size.height = 80
        button1.frame.size.width = 80
        button1.layer.cornerRadius = 40
        stackView1.addArrangedSubview(button1)
        
        // 버튼 숫자 6
        let button2 = UIButton()
        button2.setTitle("6", for: .normal)
        button2.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button2.frame.size.height = 80
        button2.frame.size.width = 80
        button2.layer.cornerRadius = 40
        stackView1.addArrangedSubview(button2)
        
        // 버튼 숫자 5
        let button3 = UIButton()
        button3.setTitle("5", for: .normal)
        button3.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button3.frame.size.height = 80
        button3.frame.size.width = 80
        button3.layer.cornerRadius = 40
        stackView1.addArrangedSubview(button3)
        
        // 버튼 연산자 +
        let button4 = UIButton()
        button4.setTitle("+", for: .normal)
        button4.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button4.frame.size.height = 80
        button4.frame.size.width = 80
        button4.layer.cornerRadius = 40
        stackView1.addArrangedSubview(button4)
        
       
        
        
        
        // 뷰 안에 들어갈 UI 집어넣기
        [label, stackView1]
            .forEach{ view.addSubview($0) }
        
        label.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.top.equalTo(view.snp.top).inset(200)
            $0.leading.equalTo(view.snp.leading).inset(30)
            $0.trailing.equalTo(view.snp.trailing).inset(30)
        }
        
        stackView1.snp.makeConstraints {
            $0.height.equalTo(80)
            $0.width.equalTo(350)
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
            
        }
        
    }
        
        
        
}
    
   
    




