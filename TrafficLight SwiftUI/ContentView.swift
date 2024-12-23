//
//  ContentView.swift
//  TrafficLight SwiftUI
//
//  Created by Perejro on 23/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var activeIndex = -1
    @State private var buttonTitle = "start"

    var body: some View {
        VStack {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    LightView(
                        color: .red,
                        opacity: activeIndex % 3 == 0 ? 1 : 0.3
                    )
                    LightView(
                        color: .yellow,
                        opacity: activeIndex % 3 == 1 ? 1 : 0.3
                    )
                    LightView(
                        color: .green,
                        opacity: activeIndex % 3 == 2 ? 1 : 0.3
                    )
                }
                .padding(20)
                .background(.black.opacity(0.3))
                .cornerRadius(20)
                
                ButtonView(title: buttonTitle) {
                    if activeIndex == -1 {
                        buttonTitle = "next"
                    }
                    onNextLight()
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(.gray)
    }

    private func onNextLight() {
        activeIndex += 1
    }
}

#Preview {
    ContentView()
}
