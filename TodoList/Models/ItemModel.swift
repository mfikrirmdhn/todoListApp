//
//  ItemModel.swift
//  TodoList
//
//  Created by zxura on 02/09/26.
//

import Foundation

struct ItemModel: Identifiable{
    let  id: String = UUID().uuidString
    let  title: String
    let  isCompl: Bool
}
