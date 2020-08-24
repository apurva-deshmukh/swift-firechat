//
//  RegistrationViewModel.swift
//  FireChat
//
//  Created by Apurva Deshmukh on 8/24/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

struct RegistrationViewModel: AuthenticationProtocol {
    
    var email: String?
    var username: String?
    var fullname: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
            && username?.isEmpty == false && fullname?.isEmpty == false
    }

}
