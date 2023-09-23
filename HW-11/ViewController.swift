//
//  ViewController.swift
//  HW-11
//
//  Created by Gabriel Zdravkovici on 22.09.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITextFieldDelegate {
    private let titleLabel = UILabel()
    private let loginTextField = UITextField()
    private let passwordTextField = UITextField()
    private let loginButton = UIButton(type: .system)
    private let forgotPassword = UILabel()
    private let orWithText = UILabel()
    private let rightLine = UIView()
    private let leftLine = UIView()
    private let facebookButton = UIButton(type: .custom)
    private let twitterButton = UIButton(type: .custom)
    private let loginImage = UIImage(systemName: "person")
    private let passwordImage = UIImage(systemName: "lock")
    private let checkMarkImage = UIImage(systemName: "checkmark.circle.fill")
    private let facebookImage = UIImage(named: "facebook-logo")
    private let twitterImage = UIImage(named: "twitter-logo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillgradient()
        setupView()
        setupHierarchy()
        setupLayout()
        loginTextField.delegate = self
        passwordTextField.delegate = self
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
        if let image = loginImage {
            let changedColorImage = image.withTintColor(.gray, renderingMode: .alwaysOriginal)
            loginTextField.setLeftIcon(changedColorImage)
        }
        
        // Кастомизация Password Text Field
        
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .white
        passwordTextField.textColor = .black
        passwordTextField.textAlignment = .center
        passwordTextField.layer.masksToBounds = true
        passwordTextField.layer.cornerRadius = 25
        passwordTextField.isSecureTextEntry = true
        if let image = passwordImage {
            let changedColorImage = image.withTintColor(.gray, renderingMode: .alwaysOriginal)
            passwordTextField.setLeftIcon(changedColorImage)
        }
        
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
        loginButton.titleLabel?.textAlignment = .center
        
        // Кастомизация Forgot your password
        
        forgotPassword.text = "Forgot your password?"
        forgotPassword.textColor = .white

        // Кастомизация Or With
        
        orWithText.text = "or connect with"
        orWithText.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.50)
        
        rightLine.layer.borderWidth = 1.0
        rightLine.layer.borderColor = UIColor(red: 170 / 255, green: 170 / 255, blue: 170 / 255, alpha: 1).cgColor
        leftLine.layer.borderWidth = 1.0
        leftLine.layer.borderColor = UIColor(red: 170 / 255, green: 170 / 255, blue: 170 / 255, alpha: 1).cgColor
        
        // Кастомизация кнопок Facebook & Twitter
        
        facebookButton.backgroundColor = UIColor(red: 57 / 255, green: 162 / 255, blue: 237 / 255, alpha: 1)
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(.white, for: .normal)
        facebookButton.layer.cornerRadius = 20
        facebookButton.layer.shadowColor = UIColor.black.cgColor
        facebookButton.layer.shadowOpacity = 0.3
        facebookButton.layer.shadowOffset = .zero
        facebookButton.layer.shadowRadius = 10
        facebookButton.layer.shouldRasterize = true
        facebookButton.layer.rasterizationScale = UIScreen.main.scale
        let facebookimageView = UIImageView(image: facebookImage)
        let facebookImageFrame = CGRect(x: 15, y: 10, width: 20, height: 20)
        facebookimageView.frame = facebookImageFrame
        facebookButton.addSubview(facebookimageView)
        
        
        twitterButton.backgroundColor = UIColor(red: 81 / 255, green: 114 / 255, blue: 181 / 255, alpha: 1)
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(.white, for: .normal)
        twitterButton.layer.cornerRadius = 20
        twitterButton.layer.shadowColor = UIColor.black.cgColor
        twitterButton.layer.shadowOpacity = 0.3
        twitterButton.layer.shadowOffset = .zero
        twitterButton.layer.shadowRadius = 10
        twitterButton.layer.shouldRasterize = true
        twitterButton.layer.rasterizationScale = UIScreen.main.scale
        let twitterImageView = UIImageView(image: twitterImage)
        let twitterImageFrame = CGRect(x: 15, y: 10, width: 20, height: 20)
        twitterImageView.frame = twitterImageFrame
        twitterButton.addSubview(twitterImageView)
    }
    
    private func setupHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotPassword)
        view.addSubview(orWithText)
        view.addSubview(rightLine)
        view.addSubview(leftLine)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
    
    }
    
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let updatedText = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) ?? ""
         if !updatedText.isEmpty {
            if let image = checkMarkImage {
                let changedColorImage = image.withTintColor(.green, renderingMode: .alwaysOriginal)
                textField.setRightIcon(changedColorImage)
            }
         } else {
             textField.rightView?.isHidden = true
         }
        return true
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
        rightLine.translatesAutoresizingMaskIntoConstraints = false
        leftLine.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 160),
            titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -150),
            
            rightLine.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -230),
            rightLine.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            rightLine.leftAnchor.constraint(equalTo: orWithText.rightAnchor, constant: 10),
            rightLine.heightAnchor.constraint(equalToConstant: 1.0),
            
            leftLine.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -230),
            leftLine.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            leftLine.rightAnchor.constraint(equalTo: orWithText.leftAnchor, constant: -10),
            leftLine.heightAnchor.constraint(equalToConstant: 1.0),
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
        
        orWithText.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.bottom.equalToSuperview().inset(220)
        }
        
        facebookButton.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(20)
            maker.width.equalTo(170)
            maker.bottom.equalToSuperview().inset(140)
            maker.height.equalTo(40)
        }
    
        twitterButton.snp.makeConstraints { maker in
            maker.right.equalToSuperview().inset(20)
            maker.width.equalTo(170)
            maker.bottom.equalToSuperview().inset(140)
            maker.height.equalTo(40)
        }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 40, y: 5, width: 22, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 0, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -40, y: 5, width: 22, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 30, width: 0, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}


