//
//  ViewController.swift
//  CalculaterAPP
//
//  Created by 유민우 on 6/26/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let label = UILabel()
    var number: Int = 0 // 라벨에 들어갈 프로퍼티
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        view.backgroundColor = .black // 뷰의 백그라운드 색상은 검정색
        
        // 수식이 들어갈 라벨
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
        
        //스택뷰 2
        let stackView2 = UIStackView()
        stackView2.axis = .horizontal
        stackView2.backgroundColor = .black
        stackView2.spacing = 10
        stackView2.distribution = .fillEqually
        
        //스택뷰 3
        let stackView3 = UIStackView()
        stackView3.axis = .horizontal
        stackView3.backgroundColor = .black
        stackView3.spacing = 10
        stackView3.distribution = .fillEqually
        
        // 스택뷰 4
        let stackView4 = UIStackView()
        stackView4.axis = .horizontal
        stackView4.backgroundColor = .black
        stackView4.spacing = 10
        stackView4.distribution = .fillEqually
        
        // 숫자 7 버튼
        let button7 = UIButton()
        button7.setTitle("7", for: .normal)
        button7.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button7.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button7.frame.size.height = 80
        button7.frame.size.width = 80
        button7.layer.cornerRadius = 40
        stackView1.addArrangedSubview(button7)
        button7.addTarget(self, action: #selector(button7Tapped), for: .touchDown)
        
        // 숫자 8 버튼
        let button8 = UIButton()
        button8.setTitle("8", for: .normal)
        button8.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button8.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button8.frame.size.height = 80
        button8.frame.size.width = 80
        button8.layer.cornerRadius = 40
        stackView1.addArrangedSubview(button8)
        button8.addTarget(self, action: #selector(button8Tapped), for: .touchDown)
        
        // 숫자 9 버튼
        let button9 = UIButton()
        button9.setTitle("9", for: .normal)
        button9.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button9.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button9.frame.size.height = 80
        button9.frame.size.width = 80
        button9.layer.cornerRadius = 40
        stackView1.addArrangedSubview(button9)
        button9.addTarget(self, action: #selector(button9Tapped), for: .touchDown)
        
        // 연산자 + 버튼
        let plusButton = UIButton()
        plusButton.setTitle("+", for: .normal)
        plusButton.backgroundColor = .orange
        plusButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        plusButton.frame.size.height = 80
        plusButton.frame.size.width = 80
        plusButton.layer.cornerRadius = 40
        stackView1.addArrangedSubview(plusButton)
        plusButton.addTarget(self, action: #selector(plusButtonTapped), for: .touchDown)
        // 여기까지 스택1에 들어감
        
        // 숫자 4버튼
        let button4 = UIButton()
        button4.setTitle("4", for: .normal)
        button4.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button4.frame.size.height = 80
        button4.frame.size.width = 80
        button4.layer.cornerRadius = 40
        stackView2.addArrangedSubview(button4)
        button4.addTarget(self, action: #selector(button4Tapped), for: .touchDown)
        
        // 숫자 5 버튼
        let button5 = UIButton()
        button5.setTitle("5", for: .normal)
        button5.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button5.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button5.frame.size.height = 80
        button5.frame.size.width = 80
        button5.layer.cornerRadius = 40
        stackView2.addArrangedSubview(button5)
        button5.addTarget(self, action: #selector(button5Tapped), for: .touchDown)
        
        // 숫자 6 버튼
        let button6 = UIButton()
        button6.setTitle("6", for: .normal)
        button6.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button6.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button6.frame.size.height = 80
        button6.frame.size.width = 80
        button6.layer.cornerRadius = 40
        stackView2.addArrangedSubview(button6)
        button6.addTarget(self, action: #selector(button6Tapped), for: .touchDown)
        
        // 연산자 - 버튼
        let minusButton = UIButton()
        minusButton.setTitle("-", for: .normal)
        minusButton.backgroundColor = .orange
        minusButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        minusButton.frame.size.height = 80
        minusButton.frame.size.width = 80
        minusButton.layer.cornerRadius = 40
        stackView2.addArrangedSubview(minusButton)
        minusButton.addTarget(self, action: #selector(minusButtonTapped), for: .touchDown)
        //여기까지 스택2에 들어감
        
        // 숫자 1 버튼
        let button1 = UIButton()
        button1.setTitle("1", for: .normal)
        button1.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button1.frame.size.height = 80
        button1.frame.size.width = 80
        button1.layer.cornerRadius = 40
        stackView3.addArrangedSubview(button1)
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchDown)
        
        // 숫자 2 버튼
        let button2 = UIButton()
        button2.setTitle("2", for: .normal)
        button2.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button2.frame.size.height = 80
        button2.frame.size.width = 80
        button2.layer.cornerRadius = 40
        stackView3.addArrangedSubview(button2)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchDown)
        
        // 숫자 3 버튼
        let button3 = UIButton()
        button3.setTitle("3", for: .normal)
        button3.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button3.frame.size.height = 80
        button3.frame.size.width = 80
        button3.layer.cornerRadius = 40
        stackView3.addArrangedSubview(button3)
        button3.addTarget(self, action: #selector(button3Tapped), for: .touchDown)
        
        // 연산자 * 버튼
        let multypleButton = UIButton()
        multypleButton.setTitle("*", for: .normal)
        multypleButton.backgroundColor = .orange
        multypleButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        multypleButton.frame.size.height = 80
        multypleButton.frame.size.width = 80
        multypleButton.layer.cornerRadius = 40
        stackView3.addArrangedSubview(multypleButton)
        multypleButton.addTarget(self, action: #selector(multypleButtonTapped), for: .touchDown)
        // 여기까지 스택3에 들어감
        
        // 리셋 버튼 (AC)
        let resetButton = UIButton()
        resetButton.setTitle("AC", for: .normal)
        resetButton.backgroundColor = .orange
        resetButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        resetButton.frame.size.height = 80
        resetButton.frame.size.width = 80
        resetButton.layer.cornerRadius = 40
        stackView4.addArrangedSubview(resetButton)
        resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchDown)
        
        // 숫자 0 버튼
        let button0 = UIButton()
        button0.setTitle("0", for: .normal)
        button0.backgroundColor = UIColor(red: 58/225, green: 58/225, blue: 58/225, alpha: 0.1)
        button0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button0.frame.size.height = 80
        button0.frame.size.width = 80
        button0.layer.cornerRadius = 40
        stackView4.addArrangedSubview(button0)
        button0.addTarget(self, action: #selector(button0Tapped), for: .touchDown)
        
        // 연산자 = 버튼
        let equalButton = UIButton()
        equalButton.setTitle("=", for: .normal)
        equalButton.backgroundColor = .orange
        equalButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        equalButton.frame.size.height = 80
        equalButton.frame.size.width = 80
        equalButton.layer.cornerRadius = 40
        stackView4.addArrangedSubview(equalButton)
        
        // 연산자 / 버튼
        let divideButton = UIButton()
        divideButton.setTitle("/", for: .normal)
        divideButton.backgroundColor = .orange
        divideButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        divideButton.frame.size.height = 80
        divideButton.frame.size.width = 80
        divideButton.layer.cornerRadius = 40
        stackView4.addArrangedSubview(divideButton)
        divideButton.addTarget(self, action: #selector(divideButtonTapped), for: .touchDown)
        // 여기까지 스택4에 들어감
        
        
        
        
        
        // 뷰 안에 들어갈 UI 집어넣기
        [label, stackView1, stackView2, stackView3, stackView4]
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
        
        stackView2.snp.makeConstraints {
            $0.height.equalTo(80)
            $0.width.equalTo(350)
            $0.top.equalTo(stackView1.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        
        stackView3.snp.makeConstraints {
            $0.height.equalTo(80)
            $0.width.equalTo(350)
            $0.top.equalTo(stackView2.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        
        stackView4.snp.makeConstraints {
            $0.height.equalTo(80)
            $0.width.equalTo(350)
            $0.top.equalTo(stackView3.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
    }
    
    // AC버튼 액션 구현
    @objc private func resetButtonTapped() {
        self.number = 0
        label.text = "\(number)"
    }
    
    // 숫자 버튼 액션 구현
    @objc
    private func button7Tapped() {
        if label.text == "0" {
            label.text = "7"
        } else {
            label.text = label.text! + "7"
        }
    }
    
    @objc private func button8Tapped() {
        if label.text == "0" {
            label.text = "8"
        } else {
            label.text = label.text! + "8"
        }
    }
    
    
    @objc private func button9Tapped() {
        if label.text == "0" {
            label.text = "9"
        } else {
            label.text = label.text! + "9"
        }
    }
    
    @objc private func button4Tapped() {
        if label.text == "0" {
            label.text = "4"
        } else {
            label.text = label.text! + "4"
        }
    }
    
    @objc private func button5Tapped() {
        if label.text == "0" {
            label.text = "5"
        } else {
            label.text = label.text! + "5"
        }
    }
    
    @objc private func button6Tapped() {
        if label.text == "0" {
            label.text = "5"
        } else {
            label.text = label.text! + "5"
        }
    }
    
    @objc private func button1Tapped() {
        if label.text == "0" {
            label.text = "1"
        } else {
            label.text = label.text! + "1"
        }
    }
    
    @objc private func button2Tapped() {
        if label.text == "0" {
            label.text = "2"
        } else {
            label.text = label.text! + "2"
        }
    }
    @objc private func button3Tapped() {
        if label.text == "0" {
            label.text = "3"
        } else {
            label.text = label.text! + "3"
        }
    }
    
    @objc private func button0Tapped() {
        label.text = label.text! + "0"
    }
    
    // 연산자 버튼 액션 구현
    @objc private func plusButtonTapped() {
        label.text = label.text! + "+"
    }
    
    @objc private func minusButtonTapped() {
        label.text = label.text! + "-"
    }
    
    @objc private func multypleButtonTapped() {
        label.text = label.text! + "*"
    }
    
    @objc private func divideButtonTapped() {
        label.text = label.text! + "/"
    }
    
    @objc private func equalButtonTapped() {
        
    }
    
    
    
    
}
    
   
    




