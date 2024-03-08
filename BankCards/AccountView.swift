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
    //MARK: - Public
    func configure() {
         
    }
    
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Private properties
    private let currenyImageView: UIImageView = {
        let view =  UIImageView()
        return view
    }()
    
    private let amountLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let accountLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private var collectionView: UICollectionView!
}

//MARK: Private methods
private extension AccountView {
    func initialize() {
        backgroundColor = UIColor(named: "cards")
    }
}

