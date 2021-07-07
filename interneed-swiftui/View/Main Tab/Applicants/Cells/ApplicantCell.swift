//
//  ApplicantCell.swift
//  interneed-swiftui
//
//  Created by cleanmac on 06/07/21.
//

import SwiftUI

struct ApplicantCell: View {
    
    private let applicant: Applicant
    private let statusColor: Color
    private let statusTitle: String
    
    init(with applicant: Applicant) {
        self.applicant = applicant
        switch applicant.status {
        case .review:
            statusColor = Color.APP_ORANGE
            statusTitle = "In Review"
        case .rejected:
            statusColor = Color.APP_RED
            statusTitle = "Rejected"
        case .shortlisted:
            statusColor = Color.GOJEK_GREEN
            statusTitle = "Shortlisted"
        }
    }
    
    var body: some View {
        ZStack {
            Color.BACKGROUND_TEXT_FIELD
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Color.white
                            .cornerRadius(8)
                         
                        Image(applicant.internship.company.logo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 34, height: 44)
                        
                    }.frame(width: 64, height: 64, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        Text(applicant.internship.title)
                            .font(Font.bold(16))
                            .foregroundColor(.TEXT_BLACK)
                        
                        Text(applicant.internship.company.name)
                            .font(Font.bold(14))
                            .foregroundColor(.TEXT_BLACK)
                    }
                }
                
                HStack {
                    Text(applicant.applyDate)
                        .font(Font.medium(10))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text(statusTitle)
                        .font(Font.medium(10))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 4)
                        .background(statusColor.cornerRadius(30))
                }
            }.padding(.horizontal, 16)
            
            
        }.frame(height: 120)
    }
}

#if DEBUG
struct ApplicantCell_Previews: PreviewProvider {
    static var previews: some View {
        ApplicantCell(with: Applicant.getAll()[0]).previewLayout(.sizeThatFits)
    }
}
#endif
