//
//  LoginView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                
                Text("Log In")
                    .font(Font.semiBold(14))
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.TEXT_LIGHT)
                    
                HStack(spacing: 5) {
                    Text("Welcome")
                        .font(Font.bold(20))
                        .foregroundColor(Color.TEXT_BLACK)
                    
                    Text("Hunters")
                        .font(Font.bold(20))
                        .foregroundColor(Color.GOJEK_GREEN)
                }
                
                Text("Log in with the your account or with your social media")
                    .font(Font.regular(12))
                    .foregroundColor(Color.TEXT_LIGHT)
                
                VStack {
                    Text("Username")
                        .font(Font.semiBold(14))
                        .foregroundColor(Color.TEXT_BLACK)
                    
                    
                    
                }
                
            }.padding(.vertical, 30)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
