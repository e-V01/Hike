//
//  CardView.swift
//  Hike
//
//  Created by Y K on 13.12.2023.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isSHowingSheet: Bool = false

    // MARK: - Fucntions
    func randomImage() {
        print("The button was pressed")
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber 
            imageNumber = randomNumber
    }
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight,
                                             . customGrayMedium], 
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                            print("Button was pressed")
                            isSHowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isSHowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([
                                    .medium,
                                    .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color.customGrayMedium)
                } //: - Header
                .padding(.horizontal, 30)
                
                // MARK: - Main Content
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                // MARK: - Footer
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight,
                                .customGreenMedium],
                                           startPoint: .top,
                                           endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.3), radius: 0.25, x: 1, y: 2)
                    
                }
                .buttonStyle(GradientButtonStyle())
                
                
                
            } // MARK: VStack
            
        } // MARK: - Card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
