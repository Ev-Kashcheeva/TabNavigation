//
//  ContentView.swift
//  TabNavigation
//
//  Created by Евгения on 10.12.2020.
//

import SwiftUI

struct TabViewContentView: View {
    @State var selectedTab = 1
    
//    кастомизация Tabbar
    init() {
//        изменение фона
        UITabBar.appearance().barTintColor = .green
//        изменение цета невыбранного элемента
        UITabBar.appearance().unselectedItemTintColor = .orange
    }
     
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab,
                    content:  {
                        CitiesView().tabItem {
                            HStack {
                                Image(systemName: "map")
                                Text("City")
                            }
                        }.tag(1)
                        StreetsView().tabItem {
                            HStack {
                                Image(systemName: "building.2")
                                Text("Street")
                            }
                        }.tag(2)
                    })
                .navigationBarTitle(Text("City"))
//                закрепление верхней панели
                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarHidden(true)
//                .navigationBarTitle("")
//                .navigationBarBackButtonHidden(true)
        }
//        корректное отображение на разных устройствах
        .navigationViewStyle(StackNavigationViewStyle())
//        скрытие верхней панели
//        .navigationBarHidden(true)
//        .navigationBarTitle("")
//        .navigationBarBackButtonHidden(true)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContentView()
    }
}

var cities = ["London", "Paris", "Moscow", "Prague"]
var streets = ["Lomonosov St.", "Lenin St."]
