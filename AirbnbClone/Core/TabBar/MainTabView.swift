//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 04/04/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{
                    Label("Explore", systemImage: "magnifyingglass")
                }
            ExploreView()
                .tabItem{
                    Label("Wishlists", systemImage: "heart")
                }
            ExploreView()
                .tabItem{
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
