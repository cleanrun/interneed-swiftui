//
//  NewInternshipCell.swift
//  interneed-swiftui
//
//  Created by cleanmac on 06/07/21.
//

import SwiftUI

struct NewInternshipCell: View {
    
    private var internship: Internship
    
    init(with internship: Internship) {
        self.internship = internship
    }
    
    var body: some View {
        ZStack {
            Color.BACKGROUND_TEXT_FIELD
                .cornerRadius(8)
            
            HStack {
                ZStack {
                    Color.white
                        .cornerRadius(8)
                     
                    Image(internship.company.logo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 33, height: 33)
                    
                }.frame(width: 56, height: 56, alignment: .center)
                .padding(.leading, 12)
                
                VStack(alignment: .leading, spacing: 3) {
                    Text(internship.title)
                        .font(Font.semiBold(14))
                        .foregroundColor(.TEXT_BLACK)
                    
                    Text(internship.company.name)
                        .font(Font.semiBold(12))
                        .foregroundColor(.TEXT_BLACK)
                    
                    HStack {
                        Image(INImageName.IC_LOCATION)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                        
                        Text(internship.company.city)
                            .font(Font.medium(10))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                    }
                }
                
                Spacer()
            }
        }.frame(height: 80)
    }
}

#if DEBUG
struct NewInternshipCell_Previews: PreviewProvider {
    static var previews: some View {
        NewInternshipCell(with: Internship.getAll()[0]).previewLayout(.sizeThatFits)
    }
}
#endif
