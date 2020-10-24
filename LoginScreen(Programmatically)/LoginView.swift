//
//  LoginView.swift
//  LoginScreen(Programmatically)
//
//  Created by Genuine on 23.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    override init (frame: CGRect) {
        super.init(frame:frame)
        setup()
    }
    func setup() {
        let stackView = mainStackView()
        addSubview(stackView)
        backgroundColor = .darkGray
        stackView.setAnchor(width: self.frame.width - 60, height: 300)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive =  true
      }
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.layer.cornerRadius = 5
        tf.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        tf.textColor = UIColor(white: 0.9, alpha: 0.8)
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Enter your name", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), .foregroundColor:UIColor(white: 1, alpha: 0.7) ]))
        tf.attributedPlaceholder = placeholder
        tf.setAnchor(width: 0, height: 40)
        return tf
    }()

    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.layer.cornerRadius = 5
        tf.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        tf.textColor = UIColor(white: 0.9, alpha: 0.8)
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), .foregroundColor:UIColor(white: 1, alpha: 0.7) ]))
        tf.attributedPlaceholder = placeholder
        tf.setAnchor(width: 0, height: 40)
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.layer.cornerRadius = 5
        tf.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        tf.textColor = UIColor(white: 0.9, alpha: 0.8)
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), .foregroundColor:UIColor(white: 1, alpha: 0.7) ]))
        tf.attributedPlaceholder = placeholder
        tf.setAnchor(width: 0, height: 40)
        return tf
    }()
    
    let confirmPasswordTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.layer.cornerRadius = 5
        tf.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        tf.textColor = UIColor(white: 0.9, alpha: 0.8)
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Confirm password", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), .foregroundColor:UIColor(white: 1, alpha: 0.7) ]))
        tf.attributedPlaceholder = placeholder
        tf.setAnchor(width: 0, height: 40)
        return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        button.setAttributedTitle(attributedString, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 40/255, green: 151/255, blue: 164/255, alpha: 1).cgColor
        button.setAnchor(width: 0, height: 40)
        return button
    }()
    
    //Putting all views in stackView for easy adding constraints
    func mainStackView() -> UIStackView {
        
        let stackView = UIStackView(arrangedSubviews: [nameTextField,emailTextField, passwordTextField,confirmPasswordTextField, loginButton])
      //  stackView.translatesAutoresizingMaskIntoConstraints = false  /////
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    
}
