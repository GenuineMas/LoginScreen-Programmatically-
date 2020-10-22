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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
       // setupView()
    }
    
    func setupView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
    //    loginView.setAnchor(width: <#T##CGFloat#>, height: <#T##CGFloat#>)
        //(top: view.topAnchor, paddingTop: 0, bottom: view.bottomAnchor, paddingBottom: 0, left: view.leftAnchor, paddingLeft: 0, right: view.rightAnchor, paddingRight: 0)
        
    }


}

