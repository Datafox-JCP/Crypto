//
//  CoinRowView.swift
//  Crypto
//
//  Created by Juan Hernandez Pazos on 18/06/23.
//

import SwiftUI

struct CoinRowView: View {
    
    // MARK: Propiedades
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    // MARK: View
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            
            Spacer()
            
            if showHoldingsColumn {
                centerColumn
            }
            
            rightColumn
        } // HStack
        .font(.subheadline)
    }
}

// MARK: Preview
struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

// MARK: Extensions
extension CoinRowView {
    
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            
            Circle()
                .frame(width: 30, height: 30)
            
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accentColor)
        } // HStack
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWidth6Decimals())
                .bold()
            
            Text((coin.currentHoldings ?? 0).asNumberString())
        } // VStack
        .foregroundColor(Color.theme.accentColor)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWidth2Decimals())
                .bold()
                .foregroundColor(Color.theme.accentColor)
            
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) > 0 ?
                    Color.theme.green : Color.theme.red
                )
        } // VStack
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
