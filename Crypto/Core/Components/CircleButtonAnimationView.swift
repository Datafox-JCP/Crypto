//
//  CircleButtonAnimationView.swift
//  Crypto
//
//  Created by Juan Hernandez Pazos on 18/06/23.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    // MARK: Propiedades
    @Binding var animate: Bool
    
    var body: some View {
        
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none, value: animate)
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(true))
    }
}
