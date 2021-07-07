//
//  ApplicantCell.swift
//  interneed-swiftui
//
//  Created by cleanmac on 06/07/21.
//

import SwiftUI

struct ApplicantCell: View {
    var body: some View {
        ZStack {
            Color.BACKGROUND_TEXT_FIELD
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Color.white
                            .cornerRadius(8)
                         
                        Image(INImageName.LOGO_GOJEK)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 34, height: 44)
                        
                    }.frame(width: 64, height: 64, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        Text("UI Designer Intern")
                            .font(Font.bold(16))
                            .foregroundColor(.TEXT_BLACK)
                        
                        Text("Gojek")
                            .font(Font.bold(14))
                            .foregroundColor(.TEXT_BLACK)
                    }
                }
                
                HStack {
                    Text("Applied on Juni 24, 09.07 AM")
                        .font(Font.medium(10))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("In Review")
                        .font(Font.medium(10))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 4)
                        .background(Color.APP_ORANGE.cornerRadius(30))
                }
            }.padding(.horizontal, 16)
            
            
        }.frame(height: 120)
    }
}

#if DEBUG
struct ApplicantCell_Previews: PreviewProvider {
    static var previews: some View {
        ApplicantCell().previewLayout(.sizeThatFits)
    }
}
#endif
