//
//  OnboardingPageView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct OnboardingPageView: View {
    var body: some View {
        VStack {
            Image(INImageName.BANNER_ONBOARDING)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 230, height: 230, alignment: .center)
            
            Text("Challenge yourself towards your future dream job and get bunch of benefits")
                .font(Font.regular(14))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.TEXT_LIGHT)
                
        }.padding()
    }
}

#if DEBUG
struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView()
    }
}
#endif
