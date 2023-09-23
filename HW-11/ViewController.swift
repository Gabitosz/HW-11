//
//  ViewController.swift
//  HW-11
//
//  Created by Gabriel Zdravkovici on 22.09.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let titleLabel = UILabel()
    private let loginTextField = UITextField()
    private let passwordTextField = UITextField()
    private let loginButton = UIButton(type: .system)
    private let forgotPassword = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillgradient()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    
    private func setupView() {
        
        // Кастомизация Title Label
        titleLabel.text = "Login"
        titleLabel.textColor = .white
        titleLabel.font = .boldSystemFont(ofSize: 28)
        titleLabel.textAlignment = .center
        
        // Кастомизация Text Login Text Field
        
        loginTextField.placeholder = "Username"
        loginTextField.borderStyle = .roundedRect
        loginTextField.backgroundColor = .white
        loginTextField.textColor = .black
        loginTextField.textAlignment = .center
        loginTextField.layer.masksToBounds = true
        loginTextField.layer.cornerRadius = 25
        
        // Кастомизация Password Text Field
        
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .white
        passwordTextField.textColor = .black
        passwordTextField.textAlignment = .center
        passwordTextField.layer.masksToBounds = true
        passwordTextField.layer.cornerRadius = 25
        
        // Кастомизация Login Button
        
        loginButton.backgroundColor = UIColor(red: 108 / 255, green: 117 / 255, blue: 207 / 255, alpha: 1)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 25
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        
        // Кастомизация Forgot your password
        
        forgotPassword.text = "Forgot your password?"
        forgotPassword.textColor = .white

    }
    
    private func setupHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotPassword)
    
    }
    
    private func fillgradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        let firstColor = UIColor(red: 215 / 255, green: 195 / 255, blue: 252 / 255, alpha: 1)
        let secondColor = UIColor(red: 245 / 255, green: 255 / 255, blue: 104 / 255, alpha: 1)
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.locations = [0.7, 1.0]
        view.layer.addSublayer(gradientLayer)
    }
    
    private func setupLayout() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 160),
        ])
        
        loginTextField.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
            maker.top.equalToSuperview().inset(250)
            maker.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
            maker.top.equalToSuperview().inset(320)
            maker.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
            maker.bottom.equalToSuperview().inset(370)
            maker.height.equalTo(50)
        }
        
        forgotPassword.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.bottom.equalToSuperview().inset(330)
        }
    }
}

