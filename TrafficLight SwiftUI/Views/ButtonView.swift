//
//  ButtonView.swift
//  TrafficLight SwiftUI
//
//  Created by Perejro on 23/12/2024.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let handler: () -> Void
    
    var body: some View {
        Button(action: handler) {
            Text(title)
                .textCase(.uppercase)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 180)
        .foregroundStyle(.white)
        .background(.tint)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    ButtonView(title: "button") {}
}
