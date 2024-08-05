//
//  CardView.swift
//  Hike
//
//  Created by ADIL ZAHOOR MALIK on 25/07/2024.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randonNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    func randomImage() {
        repeat{
            randonNumber = Int.random(in: 1...5)
        } while randonNumber == imageNumber
        imageNumber = randonNumber
        
    }
    var body: some View {
        ZStack {
            CustomBG()
            VStack {
                VStack(alignment:.leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom)
                            )
                        Spacer()
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            CustomButton()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }

                    }
                    Text("Fun and enjoyable activity for friends and family.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal,30)
                    
                ZStack{
                    AnimatedCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
