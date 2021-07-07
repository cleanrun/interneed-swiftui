//
//  ActivelyHiringCell.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct ActivelyHiringCell: View {
    
    private let internship: Internship
    
    init(with internship: Internship) {
        self.internship = internship
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.BACKGROUND_TEXT_FIELD
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Color.white
                            .cornerRadius(8)
                         
                        Image(internship.company.logo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        
                    }.frame(width: 48, height: 48, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        Text(internship.title)
                            .font(Font.bold(14))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                        
                        Text(internship.company.name)
                            .font(Font.bold(12))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                    }
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(INImageName.IC_LOCATION)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 13, height: 13)
                        
                        Text(internship.company.city)
                            .font(Font.medium(12))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                    }
                    
                    HStack {
                        Image(INImageName.IC_CALENDAR)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 13, height: 13)
                        
                        Text(internship.duration)
                            .font(Font.medium(12))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                    }
                }
                
                HStack {
                    Text("Apply")
                        .font(Font.medium(10))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 4)
                        .background(Color.TEXT_DARK.cornerRadius(30))
                        .frame(width: .infinity)
                    
                    Text("\(internship.applicants) Applicants")
                        .font(Font.medium(8))
                        .foregroundColor(.TEXT_DARK)
                        .lineLimit(1)
                }
            }.padding(.horizontal, 24)
            
            
        }.frame(height: 176)
    }
}

#if DEBUG
struct ActivelyHiringCell_Previews: PreviewProvider {
    static var previews: some View {
        ActivelyHiringCell(with: Internship.getAll()[1]).previewLayout(.sizeThatFits)
    }
}
#endif
