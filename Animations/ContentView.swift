//
//  ContentView.swift
//  Animations
//
//  Created by David Bailey on 28/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1

    var body: some View {
        print(animationAmount)

        return VStack {
            Stepper(
                "Scale amount",
                value: $animationAmount.animation(
                    .easeInOut(duration: 0.5)
                        .repeatCount(3, autoreverses: true)
                ),
                in: 1 ... 10
            )
            Spacer()
            Button("Tap Me") {
                self.animationAmount += 1
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
