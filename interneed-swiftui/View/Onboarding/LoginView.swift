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
                    .padding(.bottom, 34)
                    
                VStack(spacing: 12) {
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
                }.padding(.bottom, 34)
                
                VStack(spacing: 16) {
                    VStack(alignment: .leading) {
                        Text("Username")
                            .font(Font.semiBold(14))
                            .foregroundColor(Color.TEXT_BLACK)
                        
                        INTextField(text: $username, placeholder: "Username")
                            .frame(width: .infinity, height: 56)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Password")
                            .font(Font.semiBold(14))
                            .foregroundColor(Color.TEXT_BLACK)
                        
                        INTextField(text: $password, placeholder: "Password")
                            .frame(width: .infinity, height: 56)
                        
                        Button(action: {}) {
                            Text("Forgot Password?")
                                .font(Font.bold(14))
                                .foregroundColor(Color.TEXT_DARK)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    }
                }.padding(.bottom, 40)
                
                VStack(spacing: 32) {
                    Button(action: {}) {
                        Text("Login")
                    }.buttonStyle(PrimaryButtonStyle())
                    .frame(width: .infinity, height: 56)
                    
                    Text("Or")
                        .font(Font.bold(14))
                        .foregroundColor(.TEXT_BLACK)
                    
                    Button(action: {}) {
                        ZStack(alignment: .leading) {
                            Color.GOOGLE_BLUE
                                .cornerRadius(30)
                                .frame(width: .infinity, height: 56)
                            
                            Image(INImageName.LOGO_GOOGLE)
                                .resizable()
                                .frame(width: 36, height: 36)
                                .padding(.leading, 16)
                            
                            Text("LOGIN WITH GOOGLE")
                                .font(Font.bold(14))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                    }
                }
                
                Spacer()
                
                HStack(spacing: 4) {
                    Text("Don’t have an account?")
                        .font(Font.bold(16))
                        .foregroundColor(.TEXT_DARK)
                    
                    Button(action: {}) {
                        Text("Sign Up")
                            .font(Font.bold(16))
                            .foregroundColor(.GOJEK_GREEN)
                    }
                }
                
            }.padding(.vertical, 30)
            .padding(.horizontal, 24)
        }
    }
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
