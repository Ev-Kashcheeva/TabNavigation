//
//  CitiesView.swift
//  TabNavigation
//
//  Created by Евгения on 12.12.2020.
//

import SwiftUI

struct CitiesView: View {
    @State var toDetail = false
    @State var cityToDetail = ""
    var body: some View {
        List {
//            NavigationLink(destination: CityDetailView(city: $cityToDetail),
//                           isActive: $toDetail,
//                           label: {EmptyView()})
            ForEach(cities, id: \.self) {city in
                Text(city).onTapGesture{
                    cityToDetail = city
                    self.toDetail.toggle()
                }
            }
            NavigationLink(destination: CityDetailView(city: $cityToDetail),
                           isActive: $toDetail,
                           label: {EmptyView()})
        }
        
    }
}

struct CitiesView_Previews: PreviewProvider {
    static var previews: some View {
        CitiesView()
    }
}

struct CityDetailView: View {
    @Binding var city: String
    var body: some View {
        VStack {
            Image(systemName: "building.columns")
            Text(city)
        }
    }
}
