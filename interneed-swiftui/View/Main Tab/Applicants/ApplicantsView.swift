//
//  ApplicantsView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct ApplicantsView: View {
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Spacer()
                    
                    Image(INImageName.IC_BELL)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 19, height: 19)
                }.padding(.horizontal, 33)
                
                Text("Your Applicants")
                    .font(Font.bold(18))
                    .foregroundColor(.TEXT_BLACK)
                
            }.padding(.bottom, 32)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0...7, id: \.self) { _ in
                        ApplicantCell()
                    }
                }
            }.padding(.horizontal, 24)
            
            Spacer()
        }
    }
}

#if DEBUG
struct ApplicantsView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicantsView()
    }
}
#endif
