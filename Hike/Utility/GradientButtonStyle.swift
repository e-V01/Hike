//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Y K on 15.12.2023.
//
// COnditional Statement
// Conditional statement ? A: B
// A: when user pressed the button
// B: when button is not pressed

import SwiftUI
import Foundation

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ? LinearGradient(colors:
                                                            [.customGrayMedium,
                                                                .customGrayLight],
                                                           startPoint: .top,
                                                           endPoint: .bottom)
                :
                LinearGradient(colors:
                                        [.customGrayLight,
                                            .customGrayMedium],
                                       startPoint: .top,
                                       endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}


