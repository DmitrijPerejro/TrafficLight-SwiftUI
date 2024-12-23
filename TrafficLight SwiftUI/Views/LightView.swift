//
//  LightView.swift
//  TrafficLight SwiftUI
//
//  Created by Perejro on 23/12/2024.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .opacity(opacity)
            .frame(width: 150)
            .overlay(Circle().stroke(.black, lineWidth: 4))
    }
}

#Preview {
    LightView(color: .yellow, opacity: 0.3)
}
