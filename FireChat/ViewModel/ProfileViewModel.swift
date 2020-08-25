//
//  ProfileViewModel.swift
//  FireChat
//
//  Created by Apurva Deshmukh on 8/25/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import Foundation

enum ProfileViewModel: Int, CaseIterable {
    case accountInfo
    case settings
    
    var description: String {
        switch self {
        case .accountInfo: return "Account Information"
        case .settings: return "Settings"
        }
    }
    
    var iconImageName: String {
        switch self {
        case .accountInfo: return "person.circle"
        case .settings: return "gear"
        }
    }
}
