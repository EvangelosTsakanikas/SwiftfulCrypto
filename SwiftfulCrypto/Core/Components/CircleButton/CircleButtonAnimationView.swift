//
//  CircleButtonAnimationView.swift
//  SwiftfulCrypto
//
//  Created by user274186 on 1/20/25.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? .easeOut(duration: 1.0) : .none, value: animate)
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .foregroundStyle(.red)
        .frame(width: 100, height: 100)
}
