//
//  OnboardingView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var currentTab = 1
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack {
                    HStack {
                        Text("Find")
                            .font(Font.extraBold(28))
                            .foregroundColor(Color.TEXT_DARK)
                        
                        Text("Dream")
                            .font(Font.extraBold(28))
                            .foregroundColor(Color.GOJEK_GREEN)
                    }
                    
                    HStack {
                        Text("Internship")
                            .font(Font.extraBold(28))
                            .foregroundColor(Color.GOJEK_GREEN)
                        
                        Text("Program")
                            .font(Font.extraBold(28))
                            .foregroundColor(Color.TEXT_DARK)
                    }
                }.padding(.top, 12)
                
                TabView(selection: $currentTab) {
                    OnboardingPageView().tag(1)
                    
                    OnboardingPageView().tag(2)
                    
                    OnboardingPageView().tag(3)
                }.tabViewStyle(PageTabViewStyle())
                .padding(.horizontal, 40)
                .frame(width: geometry.size.width, height: geometry.size.height * 0.6)
                
                HStack {
                    if currentTab == 1 {
                        Capsule()
                            .frame(width: 16, height: 8)
                            .foregroundColor(Color.TEXT_DARK)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(Color.TEXT_LIGHT)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(Color.TEXT_LIGHT)
                    } else if currentTab == 2 {
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(Color.TEXT_LIGHT)
                        
                        Capsule()
                            .frame(width: 16, height: 8)
                            .foregroundColor(Color.TEXT_DARK)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(Color.TEXT_LIGHT)
                    } else {
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(Color.TEXT_LIGHT)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(Color.TEXT_LIGHT)
                        
                        Capsule()
                            .frame(width: 16, height: 8)
                            .foregroundColor(Color.TEXT_DARK)
                    }
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Let's Go")
                }.buttonStyle(PrimaryButtonStyle())
                .frame(width: (geometry.size.width - 48), height: 56)
                
            }.padding(.vertical, 30)
        }
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
