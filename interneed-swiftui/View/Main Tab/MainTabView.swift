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
                    if currentTab == 1 {
                        Image(INImageName.IC_HOME_ACTIVE)
                    } else {
                        Image(INImageName.IC_HOME_INACTIVE)
                    }
                }
                .tag(1)
            
            ApplicantsView()
                .tabItem {
                    if currentTab == 2 {
                        Image(INImageName.IC_APPLICANTS_ACTIVE)
                    } else {
                        Image(INImageName.IC_APPLICANTS_INACTIVE)
                    }
                }
                .tag(2)
            
            EventsView()
                .tabItem {
                    if currentTab == 3 {
                        Image(INImageName.IC_EVENT_ACTIVE)
                    } else {
                        Image(INImageName.IC_EVENT_INACTIVE)
                    }
                }
                .tag(3)
            
            AccountView()
                .tabItem {
                    if currentTab == 4 {
                        Image(INImageName.IC_ACCOUNT_ACTIVE)
                    } else {
                        Image(INImageName.IC_ACCOUNT_INACTIVE)
                    }
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
