//
//  CustomTextField.swift
//  FireChat
//
//  Created by Apurva Deshmukh on 8/24/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    // MARK: - Lifecycle
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        borderStyle = .none
        font = UIFont.systemFont(ofSize: 16)
        textColor = .white
        keyboardAppearance = .dark
        attributedPlaceholder = NSAttributedString(string: placeholder,
                                                   attributes: [.foregroundColor : UIColor.white])
        autocapitalizationType = .none
        autocorrectionType = .no
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
