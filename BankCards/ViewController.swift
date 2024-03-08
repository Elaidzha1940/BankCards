//  /*
//
//  Project: BankCards
//  File: ViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 08.03.2024
//
//  */

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "background")
        let accountView = AccountView()
        let info = AccountViewInfo(currency: .eur, amount: 828, accountName: "Russian Standard Gold", cards: [CardTumbnailInfo(image: UIImage(named: "ae")!, id: ""), CardTumbnailInfo(image: UIImage(named: "ae")!, id: ""), CardTumbnailInfo(image:UIImage(named: "ae")!, id: "")])
        accountView.configure(with: info)
        view.addSubview(accountView)
        accountView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
    }
}

