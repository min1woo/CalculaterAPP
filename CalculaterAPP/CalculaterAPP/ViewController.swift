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
    let label = UILabel() // 수식이 들어갈 라벨

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        view.backgroundColor = .black // 뷰의 백그라운드 색상은 검정색
        
        label.text = "\(number)"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .right
        
        view.addSubview(label) // 뷰 안에 라벨 집어넣기
        label.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.top.equalTo(view.snp.top).inset(200)
            $0.leading.equalTo(view.snp.leading).inset(30)
            $0.trailing.equalTo(view.snp.trailing).inset(30)
            
        }
        
        
        
    }


}

