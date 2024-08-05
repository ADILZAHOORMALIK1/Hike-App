//
//  AnimatedCircleView.swift
//  Hike
//
//  Created by ADIL ZAHOOR MALIK on 26/07/2024.
//

import SwiftUI

struct AnimatedCircleView: View {
    @State private var isAnimated: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [.customIndigoMedium,.customSalmonLight], startPoint:isAnimated ? .topLeading : .bottomLeading, endPoint:isAnimated ?  .bottomTrailing : .topTrailing)
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimated.toggle()
                    }
                }
            MotionAnimationView()
        }
        .frame(width: 256,height: 256)
    }
}

#Preview {
    AnimatedCircleView()
}
