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
    var currentNumber: String = "" // 현재 입력 중인 숫자
    var previousNumber: String = "" // 이전에 입력된 숫자
    var currentOperator: String? // 현재 연산자
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        view.backgroundColor = .black
        
        // 라벨 설정
        label.text = "0"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .right
        
        // 스택뷰 설정
        let stackView1 = createStackView()
        let stackView2 = createStackView()
        let stackView3 = createStackView()
        let stackView4 = createStackView()
        
        // 숫자 버튼 설정
        let buttons: [(String, Selector)] = [
            ("7", #selector(buttonTapped(_:))), ("8", #selector(buttonTapped(_:))), ("9", #selector(buttonTapped(_:))), ("+", #selector(operatorTapped(_:))),
            ("4", #selector(buttonTapped(_:))), ("5", #selector(buttonTapped(_:))), ("6", #selector(buttonTapped(_:))), ("-", #selector(operatorTapped(_:))),
            ("1", #selector(buttonTapped(_:))), ("2", #selector(buttonTapped(_:))), ("3", #selector(buttonTapped(_:))), ("*", #selector(operatorTapped(_:))),
            ("AC", #selector(resetButtonTapped)), ("0", #selector(buttonTapped(_:))), ("=", #selector(equalButtonTapped)), ("/", #selector(operatorTapped(_:)))
        ]
        
        // 버튼을 스택뷰에 추가
        for (index, button) in buttons.enumerated() {
            let btn = createButton(title: button.0, action: button.1)
            switch index {
            case 0...3:
                stackView1.addArrangedSubview(btn)
            case 4...7:
                stackView2.addArrangedSubview(btn)
            case 8...11:
                stackView3.addArrangedSubview(btn)
            case 12...15:
                stackView4.addArrangedSubview(btn)
            default:
                break
            }
        }
        
        // 뷰에 스택뷰 추가
        [label, stackView1, stackView2, stackView3, stackView4].forEach { view.addSubview($0) }
        
        // 레이아웃 설정
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
    
    // 스택뷰 생성 메서드
    func createStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
    
    // 버튼 생성 메서드
    func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 0.1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.frame.size.height = 80
        button.frame.size.width = 80
        button.layer.cornerRadius = 40
        button.addTarget(self, action: action, for: .touchDown)
        if ["+", "-", "*", "/", "AC", "="].contains(title) {
            button.backgroundColor = .orange
        } else {
            button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 0.1)
        }
        return button
    }
    
    // AC버튼 액션 구현
    @objc private func resetButtonTapped() {
        currentNumber = ""
        previousNumber = ""
        currentOperator = nil
        label.text = "0"
    }
    
    // 숫자 버튼 액션 구현
    @objc private func buttonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else { return }
        if currentNumber == "0" {
            currentNumber = title
        } else {
            currentNumber += title
        }
        label.text = currentNumber
    }
    
    // 연산자 버튼 액션 구현
    @objc private func operatorTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else { return }
        if !currentNumber.isEmpty {
            previousNumber = currentNumber
            currentNumber = ""
            currentOperator = title
            label.text = previousNumber + "" + title
        }
    }
    
  
    
    // = 버튼 액션 구현
    @objc private func equalButtonTapped() {
        guard let cuurentOperator = currentOperator,
              let previousNumber = Int(previousNumber),
              let currentNumber = Int(currentNumber) else {
            label.text = "Erorr"
            return
        }
        
        var result: Int = 0
        
        switch cuurentOperator {
        case "+":
            result = previousNumber + currentNumber
        case "-":
            result = previousNumber - currentNumber
        case "*":
            result = previousNumber * currentNumber
        case "/":
            result = previousNumber / currentNumber
        default:
            break
        }
        
        label.text = "\(result)"
        self.currentNumber = "\(result)"
        self.previousNumber = ""
        self.currentOperator = nil
    }
}




