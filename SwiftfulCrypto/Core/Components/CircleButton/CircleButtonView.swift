//
//  CircleButtonView.swift
//  SwiftfulCrypto
//
//  Created by user274186 on 1/20/25.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.5),
                radius: 10
            )
            .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Group {
        CircleButtonView(iconName: "info")
    }
    
}
#Preview(traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "plus")
        .preferredColorScheme(.dark)
}
