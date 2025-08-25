import SwiftUI

struct TouchTargetTooSmallView: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("Touch Target Too Small")
                .font(.title)
                .padding(.top)
            VStack(spacing: 16) {
                Text("Failing Example:")
                    .font(.headline)
                Button(action: {}) {
                    Text("Tiny")
                        .font(.caption)
                        .padding(2)
                }
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(4)
                .frame(width: 30, height: 20) // Intentionally too small
                
                Text("Passing Example:")
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Button(action: {}) {
                    Text("Accessible Button")
                        .font(.body)
                        .padding()
                }
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .frame(minWidth: 44, minHeight: 44)
            }
            Spacer()
        }
        .padding()
    }
}
