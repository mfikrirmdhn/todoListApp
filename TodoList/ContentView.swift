//
//  ContentView.swift
//  TodoList
//
//  Created by zxura on 02/09/26.
//

import SwiftUI
/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Model for view
 
 */
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
