import SwiftUI

struct FormLabelIssuesView: View {
    @State private var checkbox1 = false
    @State private var checkbox2 = false
    @State private var radio = 0
    var body: some View {
        VStack(spacing: 32) {
            Text("Form Label Issues")
                .font(.title)
                .padding(.top)
            VStack(alignment: .leading, spacing: 20) {
                Text("Failing Examples:").font(.headline)
                HStack {
                    Button(action: { checkbox1.toggle() }) {
                        Image(systemName: checkbox1 ? "checkmark.square" : "square")
                    } // No label
                    Button(action: { checkbox2.toggle() }) {
                        Image(systemName: checkbox2 ? "checkmark.square" : "square")
                    } // No label
                }
                HStack {
                    Button(action: { radio = 1 }) {
                        Image(systemName: radio == 1 ? "largecircle.fill.circle" : "circle")
                    } // No label
                    Button(action: { radio = 2 }) {
                        Image(systemName: radio == 2 ? "largecircle.fill.circle" : "circle")
                    } // No label
                }
                Text("Passing Examples:")
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Toggle(isOn: $checkbox1) {
                    Text("Accept Terms and Conditions")
                }
                Toggle(isOn: $checkbox2) {
                    Text("Subscribe to newsletter")
                }
                Picker("Favorite Color", selection: $radio) {
                    Text("Red").tag(1)
                    Text("Blue").tag(2)
                }
                .pickerStyle(.segmented)
            }
            Spacer()
        }
        .padding()
    }
}
