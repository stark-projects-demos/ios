//
//  ContentView.swift
//  Stark iOS Sample
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Stark Accessibility Demo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 32)

            Text("This text has poor color contrast.")
                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8)) // light gray on white
                .padding(8)
                .background(Color.white)
                .cornerRadius(8)

            Button(action: {
                // No-op for demo
            }) {
                Text("Tiny Button")
                    .font(.caption)
                    .padding(4)
            }
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(4)
            .frame(width: 44, height: 24)

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.yellow)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
