//
//  HomeView.swift
//  Crypto
//
//  Created by Juan Hernandez Pazos on 15/06/23.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: Propiedades
    @State private var showPortfolio = false
    
    // MARK: View
    var body: some View {
        ZStack {
            // MARK: Background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // MARK: Content layer
            VStack {
                homeHeader
                
                Spacer(minLength: 0)
            } // VStack
        } // ZStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            
            Spacer()
            
            Text(showPortfolio ? "Portafolio" : "Precios en tiempo real")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accentColor)
                .animation(.none, value: showPortfolio)
            
            Spacer()
            
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        } // HStack
        .padding(.horizontal)
    }
}
