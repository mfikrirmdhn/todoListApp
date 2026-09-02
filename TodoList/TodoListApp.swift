//
//  TodoListApp.swift
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
@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            
        }
    }
}
