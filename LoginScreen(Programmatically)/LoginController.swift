//
//  ViewController.swift
//  LoginScreen(Programmatically)
//
//  Created by Genuine on 22.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    var loginView: LoginView!
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.alwaysBounceVertical = true
        sv.backgroundColor = UIColor.blue
        sv.bounces = false
        sv.showsVerticalScrollIndicator = false
        return sv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupView()
        NotificationCenter.default.addObserver(self, selector: #selector(LoginController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(LoginController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    func setupView() {
        
        self.view.addSubview(scrollView)
        
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        
        scrollView.addSubview(loginView)
        scrollView.setAnchor(top: view.topAnchor, paddingTop: 0, bottom: view.bottomAnchor, paddingBottom: 0, left: view.leftAnchor, paddingLeft: 0, right: view.rightAnchor, paddingRight: 0, width: 50, height: 50)
        mainView.setAnchor(top: view.topAnchor, paddingTop: 0, bottom: view.bottomAnchor, paddingBottom: 0, left: view.leftAnchor, paddingLeft: 0, right: view.rightAnchor, paddingRight: 0, width: 50, height: 50)
       
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification ){
        guard let userInfo = notification.userInfo else {return}
        guard let keyboardSize = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {return}
        let keyboardFrame = keyboardSize.cgRectValue
        if self.view.frame.origin.y == 0 {
            self.view.frame.origin.y -= keyboardFrame.height
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification ){
        if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
    }

}

