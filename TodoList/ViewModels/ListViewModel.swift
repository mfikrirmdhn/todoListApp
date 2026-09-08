//
//  ListViewModel.swift
//  TodoList
//
//  Created by zxura on 04/09/26.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init(){
        getItem()
    }
    
    func getItem(){
        
        let newItems = [
            ItemModel(title: "This is the First Task", isCompl: false),
            ItemModel(title: "This is the Second Task", isCompl: false),
            ItemModel(title: "This is the Third Task", isCompl: true)
        ]
        
        items.append(contentsOf: newItems)
        
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompl: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
//        if items.firstIndex(where: { existingItem in
//            return existingItem.id == item.id
//        }) != nil{
//
//        }
        
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updateCompletion()
        }
        
    }
    
}
