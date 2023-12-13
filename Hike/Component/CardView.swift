//
//  CardView.swift
//  Hike
//
//  Created by Y K on 13.12.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            ZStack {
                Circle()
                    .fill(.linearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")
                                                  ],
                                          startPoint: .topLeading,
                                          endPoint: .bottomTrailing
                                         )
                    )
                    .frame(width: 256, height: 256)
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
