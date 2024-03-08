//  /*
//
//  Project: BankCards
//  File: AccountViewInfo.swift
//  Created by: Elaidzha Shchukin
//  Date: 08.03.2024
//
//  */

import UIKit

struct AccountViewInfo {
    let currency: Currency
    let amount: Int
    let accountName: String
    let cards: [CardTumbnailInfo]
}

enum Currency {
    case eur
    case rub
    case usd
}

struct CardTumbnailInfo {
    let image: UIImage
    let id: String
}
