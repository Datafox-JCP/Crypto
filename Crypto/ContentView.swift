//
//  ContentView.swift
//  Crypto
//
//  Created by Juan Hernandez Pazos on 15/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Accent color")
                    .foregroundColor(Color.theme.accentColor)
                
                Text("Secondary text color")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Red color")
                    .foregroundColor(Color.theme.red)
                
                Text("Green color")
                    .foregroundColor(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
