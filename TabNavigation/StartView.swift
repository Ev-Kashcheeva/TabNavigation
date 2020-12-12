//
//  StartView.swift
//  TabNavigation
//
//  Created by Василий on 12.12.2020.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        Text("Go to Main View").frame(width: 150, height: 50, alignment: .center)
            .onTapGesture{
                let scene = UIApplication.shared.connectedScenes.first as! UIWindowScene
                let windowDelegate = scene.delegate as! SceneDelegate
                let window = UIWindow(windowScene: scene)
                window.rootViewController = UIHostingController(rootView: TabViewContentView())
                windowDelegate.window = window
                window.makeKeyAndVisible()
                
            }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
