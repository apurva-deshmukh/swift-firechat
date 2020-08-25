//
//  MessageViewModel.swift
//  FireChat
//
//  Created by Apurva Deshmukh on 8/24/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import UIKit

struct MessageViewModel {
    
    // MARK: - Properties
    
    private let message: Message
    
    var messageBackgroundColor: UIColor {
        return message.isFromCurrentUser ? #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1): .systemPurple
    }
    
    var messageTextColor: UIColor {
        return message.isFromCurrentUser ? .black : .white
    }
    
    var rightAnchorActive: Bool {
        return message.isFromCurrentUser
    }
    
    var leftAnchorActive: Bool {
        return !message.isFromCurrentUser
    }
    
    var shouldHideProfileImage: Bool {
        return message.isFromCurrentUser
    }
    
    var profileImageUrl: URL? {
        guard let user = message.user else { return nil}
        return URL(string: user.profileImageUrl)
    }
    
    // MARK: - Lifecycle
    
    init(message: Message) {
        self.message = message
    }
    
    // MARK: - Helpers
}
