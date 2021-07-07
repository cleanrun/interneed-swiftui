//
//  MainTabView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct MainTabView: View {
    
    @State var currentTab = 1
    
    init() {
        let image = UIImage.gradientImageWithBounds(bounds: CGRect( x: 0, y: 0, width: UIScreen.main.scale, height: 7), colors: [
                UIColor.clear.cgColor,
                UIColor.gray.withAlphaComponent(0.1).cgColor
            ]
        )

        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor.white
        appearance.backgroundImage = UIImage()
        appearance.shadowImage = image

        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        TabView(selection: $currentTab) {
            HomeView()
                .tabItem {
                    Image(currentTab == 1 ? INImageName.IC_HOME_ACTIVE : INImageName.IC_HOME_INACTIVE)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .tag(1)
            
            ApplicantsView()
                .tabItem {
                    Image(currentTab == 2 ? INImageName.IC_APPLICANTS_ACTIVE : INImageName.IC_APPLICANTS_INACTIVE)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .tag(2)
            
            EventsView()
                .tabItem {
                    Image(currentTab == 3 ? INImageName.IC_EVENT_ACTIVE : INImageName.IC_EVENT_INACTIVE)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .tag(3)
            
            AccountView()
                .tabItem {
                    Image(currentTab == 4 ? INImageName.IC_ACCOUNT_ACTIVE : INImageName.IC_ACCOUNT_INACTIVE)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .tag(4)
        }
    }
}

#if DEBUG
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
#endif
