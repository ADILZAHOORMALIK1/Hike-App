//
//  CustomBG.swift
//  Hike
//
//  Created by ADIL ZAHOOR MALIK on 25/07/2024.
//

import SwiftUI

struct CustomBG: View {
    var body: some View {
        ZStack{
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
        }
        
    }
}

#Preview {
    CustomBG()
        .padding()
}
