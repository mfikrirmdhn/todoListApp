//
//  ListView.swift
//  TodoList
//
//  Created by zxura on 02/09/26.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
    "first Title",
    "Seccond Title",
    "third Title"
    
    ]
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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

