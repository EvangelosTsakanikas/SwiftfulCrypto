//
//  CoinLogoView.swift
//  SwiftfulCrypto
//
//  Created by user274186 on 1/23/25.
//

import SwiftUI

struct CoinLogoView: View {
    
    let coin: CoinModel
    
    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinLogoView(coin: DeveloperPreview().coin)
        .preferredColorScheme(.light)
}
#Preview(traits: .sizeThatFitsLayout) {
    CoinLogoView(coin: DeveloperPreview().coin)
        .preferredColorScheme(.dark)
}
