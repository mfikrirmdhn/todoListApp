//
//  ItemModel.swift
//  TodoList
//
//  Created by zxura on 02/09/26.
//

import Foundation

struct ItemModel: Identifiable, Codable{
    let  id: String
    let  title: String
    let  isCompl: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompl: Bool) {
        self.id = id
        self.title = title
        self.isCompl = isCompl
    }
    
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompl: !isCompl)
    }
}
