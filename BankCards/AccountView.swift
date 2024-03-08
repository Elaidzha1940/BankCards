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
        currenyImageView.image = makeCurrencyImage(for: info.currency)
        amountLabel.text 
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
        static let contentInsent: CGFloat = 16
    }
    
    //MARK: properties
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
    private var cards: [CardTumbnailInfo] = []
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
        collectionView.register(AccountViewCardCell.self, forCellWithReuseIdentifier: String(describing: AccountViewCardCell.self))
        collectionView.dataSource = self
        collectionView.delegate = self
        yStack.addArrangedSubview(collectionView)
        
        let xStack = UIStackView()
        xStack.axis = .horizontal
        xStack.addArrangedSubview(currenyImageView)
        xStack.addArrangedSubview(yStack)
        addSubview(xStack)
        xStack.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIConstants.contentInsent)
        }
    }
    
    func makeCurrencyImage(for currency: Currency) -> UIImage? {
        switch currency {
        case .usd:
            return UIImage(named: "star")
        case .eur:
            return UIImage(named: "star")
        case .rub:
            return UIImage(named: "star")
        }
    }
}

//MARK: - UICollectionViewDataSource
extension AccountView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: AccountViewCardCell.self), for: indexPath) as! AccountViewCardCell
        let image = cards[indexPath.item].image
        cell.configure(with: image)
        return cell
    }
    
    
}

//MARK: - UICollectionViewDelegateFlowLayout
extension AccountView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIConstants.cardWidth, height: UIConstants.cardHeight)
    }
}
