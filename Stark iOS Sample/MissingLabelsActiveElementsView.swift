import SwiftUI

struct MissingLabelsActiveElementsView: View {
    @State private var sliderValue: Double = 0.5
    @State private var isSwitchOn: Bool = false
    var body: some View {
        VStack(spacing: 32) {
            Text("Missing Labels on Active Elements")
                .font(.title)
                .padding(.top)
            VStack(alignment: .leading, spacing: 20) {
                Text("Failing Examples:").font(.headline)
                Button(action: {}) {
                    Image(systemName: "star.fill")
                } // No accessibility label
                ProgressView()
                Slider(value: $sliderValue)
                Toggle(isOn: $isSwitchOn) {
                    EmptyView() // No label
                }
                .labelsHidden()
                Text("Passing Examples:")
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Button(action: {}) {
                    Image(systemName: "star.fill")
                }
                .accessibilityLabel("Favorite")
                ProgressView()
                    .accessibilityLabel("Loading progress")
                Slider(value: $sliderValue)
                    .accessibilityLabel("Volume")
                Toggle(isOn: $isSwitchOn) {
                    Text("Enable feature")
                }
            }
            Spacer()
        }
        .padding()
    }
}
