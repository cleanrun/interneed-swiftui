//
//  INTextField.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct INTextField: View {
    
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        ZStack {
            Color.BACKGROUND_BLUE
                .cornerRadius(30)
            
            TextField(placeholder, text: $text)
                .font(Font.regular(16))
                .foregroundColor(.TEXT_BLACK)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
        }
    }
}

#if DEBUG
struct INTextField_Previews: PreviewProvider {
    static var previews: some View {
        INTextField(text: .constant("Value"), placeholder: "Placeholder").previewLayout(.sizeThatFits)
    }
}
#endif
