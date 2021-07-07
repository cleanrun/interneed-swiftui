//
//  ApplicantsView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct ApplicantsView: View {
    
    private let applicants = Applicant.getAll()
    
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
                    ForEach(applicants) { applicant in
                        NavigationLink(
                            destination: DetailInternshipView(with: applicant.internship)) {
                            ApplicantCell(with: applicant)
                        }
                    }
                }
            }.padding(.horizontal, 24)
            
            Spacer()
        }.navigationBarHidden(true)
    }
}

#if DEBUG
struct ApplicantsView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicantsView()
    }
}
#endif
