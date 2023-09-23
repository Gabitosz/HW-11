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
        
        //Кастомизация Text Fields
        loginTextField.placeholder = "Username"
        loginTextField.borderStyle = .roundedRect
        loginTextField.backgroundColor = .white
        loginTextField.textColor = .black
        loginTextField.textAlignment = .center
        loginTextField.layer.masksToBounds = true
        loginTextField.layer.cornerRadius = 25
        
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .white
        passwordTextField.textColor = .black
        passwordTextField.textAlignment = .center
        passwordTextField.layer.masksToBounds = true
        passwordTextField.layer.cornerRadius = 25
        
    }
    
    private func setupHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
    
    }
    
    private func fillgradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        let firstColor = UIColor(red: 215 / 255, green: 195 / 255, blue: 252 / 255, alpha: 1)
        let secondColor = UIColor(red: 245 / 255, green: 255 / 255, blue: 104 / 255, alpha: 1)
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.locations = [0.2, 0.8]
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
    }
}

