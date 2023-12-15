//
//  CustomCircleView.swift
//  Hike
//
//  Created by Y K on 15.12.2023.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.linearGradient(colors: 
                                        [
                                            .customIndigoMedium,
                                            .customSalmonLight
                                              ],
                                      startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                                      endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing
                                     )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
                }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
