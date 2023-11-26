//
//  Tabbar.swift
//  MedApp
//
//  Created by Владислав Волков on 17.11.2023.
//

import SwiftUI

struct Tabbar: View {
    @State var selectedTab = "Home"
    
    let tabs = [
        ["name": "Home", "icon": "house"],
        ["name": "Calendar", "icon": "calendar"],
        ["name": "Chat", "icon": "message"],
        ["name": "Profile", "icon": "person"]
    ]
    
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                DoctorListView()
                    .tag(NSLocalizedString("home", comment: "Home tab title"))
                
                Text("Nanana")
                    .tag("Calendar")
                
                Text("Nanana")
                    .tag("Chat")
                
                Text("Nanana")
                    .tag("Profile")
            }
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Spacer()
                    TabbarItem(tab: tab["icon"] ?? "", title: tab["name"] ?? "", selected: $selectedTab)
                    Spacer()
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 5)
            .padding(.horizontal, 24)
            .frame(maxWidth: .infinity)
            .background(Color("backgroundPrimary"))
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.black.opacity(0.04)),
                alignment: .top
            )
        }
    }
}

struct TabBarPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
