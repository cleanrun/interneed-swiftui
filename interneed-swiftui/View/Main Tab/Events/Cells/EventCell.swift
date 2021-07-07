//
//  EventCell.swift
//  interneed-swiftui
//
//  Created by cleanmac on 06/07/21.
//

import SwiftUI

struct EventCell: View {
    var body: some View {
        ZStack {
            Color.BACKGROUND_BLUE_2
                .cornerRadius(8)
            
            HStack(spacing: 36) {
                VStack(alignment: .leading, spacing: 9) {
                    Text("Career Conference")
                        .font(Font.extraBold(12))
                        .foregroundColor(.APP_RED)
                    
                    Text("Treat yourself with knowledge")
                        .font(Font.extraBold(16))
                        .foregroundColor(.TEXT_BLACK)
                    
                    Text("Join Event")
                        .font(Font.medium(12))
                        .foregroundColor(.white)
                        .padding(.horizontal, 28)
                        .padding(.vertical, 9)
                        .background(Color.GOJEK_GREEN.cornerRadius(30))
                }.padding()
                
                Image(INImageName.BANNER_GREEN)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 100)
                    .padding(.top, 30)
            }
            
        }.frame(height: 154)
    }
}

struct EventCell_Previews: PreviewProvider {
    static var previews: some View {
        EventCell().previewLayout(.sizeThatFits)
    }
}
