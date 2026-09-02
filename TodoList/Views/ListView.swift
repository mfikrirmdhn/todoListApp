//
//  ListView.swift
//  TodoList
//
//  Created by zxura on 02/09/26.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
    ItemModel(title: "This is the First Task", isCompl: false),
    ItemModel(title: "This is the Second Task", isCompl: false),
    ItemModel(title: "This is the Third Task", isCompl: true)
    ]
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
                
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
      
    }
}

