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
    func configure(with info: AccountViewInfo) {
         
    }
    
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Private constants
    private enum UIConstants {
        static let cardWidth: CGFloat = 45
        static let cardHeight: CGFloat = 30
    }
    
    //MARK:
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
        let yStack = UIStackView()
        yStack.axis = .vertical
        yStack.addArrangedSubview(amountLabel)
        yStack.addArrangedSubview(accountLabel)
        
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        yStack.addArrangedSubview(collectionView)
    }
}

//MARK: - UICollectionViewDataSource
extension AccountView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

//MARK: - UICollectionViewDelegateFlowLayout
extension AccountView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIConstants.cardWidth, height: UIConstants.cardHeight)
    }
}
