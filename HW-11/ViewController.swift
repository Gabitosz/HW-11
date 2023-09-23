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
    private let loginTextField = UITextField()
    private let passwordTextField = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        fillgradient()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    
    private func setupView() {
        parentStackView.axis = .vertical
        parentStackView.spacing = 20
        
        // Кастомизация Title Label
        titleLabel.text = "Login"
        titleLabel.textColor = .black
        titleLabel.font = .boldSystemFont(ofSize: 28)
        titleLabel.textAlignment = .center
        
        //Кастомизация Text Fields
        loginTextField.placeholder = "Username"
        loginTextField.borderStyle = .roundedRect
        loginTextField.backgroundColor = .white
        loginTextField.textColor = .black
        loginTextField.textAlignment = .center
        loginTextField.layer.masksToBounds = true
        loginTextField.layer.cornerRadius = 18
        
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .white
        passwordTextField.textColor = .black
        passwordTextField.textAlignment = .center
        passwordTextField.layer.masksToBounds = true
        passwordTextField.layer.cornerRadius = 18
        
    }
    
    private func setupHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(parentStackView)
        parentStackView.addArrangedSubview(loginTextField)
        parentStackView.addArrangedSubview(passwordTextField)
    }
    
    private func fillgradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]
        gradientLayer.locations = [0.2, 0.8]
        view.layer.addSublayer(gradientLayer)
    }
    
    private func setupLayout() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        parentStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 160),
            parentStackView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 50),
            view.rightAnchor.constraint(equalTo: parentStackView.rightAnchor,constant: 50),
            parentStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
        ])
    }
}

