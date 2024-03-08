//  /*
//
//  Project: BankCards
//  File: AccountViewCardCell.swift
//  Created by: Elaidzha Shchukin
//  Date: 08.03.2024
//
//  */

import UIKit
import SnapKit

class AccountViewCardCell: UICollectionViewCell {
    //MARK: - Public
    func configure(with image: UIImage) {
        imageView.image = image
    }
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: properties
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 20
        return view
    }()
}

//MARK: Private methods
private extension AccountViewCardCell {
    func initialize() {
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
