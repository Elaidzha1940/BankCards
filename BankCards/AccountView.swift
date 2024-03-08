//  /*
//
//  Project: BankCards
//  File: AccountView.swift
//  Created by: Elaidzha Shchukin
//  Date: 08.03.2024
//
//  */

import UIKit
import SnapKit

class AccountView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: Private methods
private extension AccountView {
    func initialize() {
        backgroundColor = UIColor(named: "cards")
    }
}

