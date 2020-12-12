//
//  StreetsView.swift
//  TabNavigation
//
//  Created by Евгения on 12.12.2020.
//

import SwiftUI

struct StreetsView: View {
    var body: some View {
        List {
            ForEach(streets, id: \.self) {
                street in Text(street)
            }
        }
    }
}

struct StreetsView_Previews: PreviewProvider {
    static var previews: some View {
        StreetsView()
    }
}
