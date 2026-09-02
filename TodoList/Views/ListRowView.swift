//
//  ListRowView.swift
//  TodoList
//
//  Created by zxura on 02/09/26.
//

import SwiftUI


struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompl ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompl ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .padding(.vertical, 10)
        .font(.callout)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "The First Task", isCompl: false)
    static var item2 = ItemModel(title: "The Second Task", isCompl: true)
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            
            ListRowView(item: item2)

        }
        .previewLayout(.sizeThatFits)
    }
}
