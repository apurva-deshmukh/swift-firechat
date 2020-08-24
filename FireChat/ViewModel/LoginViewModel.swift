//
//  LoginViewModel.swift
//  FireChat
//
//  Created by Apurva Deshmukh on 8/24/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

protocol AuthenticationProtocol {
    var formIsValid: Bool { get }
}

struct LoginViewModel: AuthenticationProtocol {
    
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
