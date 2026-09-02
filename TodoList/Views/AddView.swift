//
//  AddView.swift
//  TodoList
//
//  Created by zxura on 02/09/26.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here..", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color("FieldColor"))
                    .cornerRadius(10)
                    .padding(.bottom,5)
                
                Button {
                    print("www")
                } label: {
                    Text("Save".uppercased())
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

                
                
            }
            .padding(14)
        }
        .navigationTitle("Add an Items")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        
    }
}
