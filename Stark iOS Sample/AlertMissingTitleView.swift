import SwiftUI

struct AlertMissingTitleView: View {
    @State private var showAlert = false
    @State private var showGoodAlert = false
    var body: some View {
        VStack(spacing: 32) {
            Text("Alert Missing Title/Description")
                .font(.title)
                .padding(.top)
            VStack(spacing: 16) {
                Text("Failing Example:").font(.headline)
                Button("Show Failing Alert") {
                    showAlert = true
                }
                .alert("", isPresented: $showAlert) {
                    Button("OK", role: .cancel) {}
                } message: {
                    Text("")
                }
                
                Text("Passing Example:")
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Button("Show Passing Alert") {
                    showGoodAlert = true
                }
                .alert("Important Update", isPresented: $showGoodAlert) {
                    Button("OK", role: .cancel) {}
                } message: {
                    Text("This alert has a title and a helpful description.")
                }
            }
            Spacer()
        }
        .padding()
    }
}
