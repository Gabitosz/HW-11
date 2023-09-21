//
//  ViewController.swift
//  HW-11
//
//  Created by Gabriel Zdravkovici on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    private let titleLabel = UILabel()
    private let parentStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bezierBackground = BezierBackgroundView()
        bezierBackground.frame = view.bounds
        view.addSubview(bezierBackground)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupView() {
        // Кастомизация Title Label
        titleLabel.text = "Login"
        titleLabel.textColor = .black
        titleLabel.font = .boldSystemFont(ofSize: 28)
        titleLabel.textAlignment = .center
    }
    
    private func setupHierarchy() {
        view.addSubview(parentStackView)
        parentStackView.addArrangedSubview(titleLabel)
    }
    
    private func setupLayout() {
        parentStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            parentStackView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30),
            view.rightAnchor.constraint(equalTo: parentStackView.rightAnchor,constant: 30),
            parentStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 280),
            
        ])
    }
}

