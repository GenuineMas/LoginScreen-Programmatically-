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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        backgroundColor = .red
    }
    
}
