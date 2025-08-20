import SwiftUI

struct ImagesMissingLabelsView: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("Images Missing Accessibility Labels")
                .font(.title)
                .padding(.top)
            VStack(alignment: .leading, spacing: 20) {
                Text("Failing Examples:").font(.headline)
                Image("Stark Logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Passing Examples:")
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Image("Stark Logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .accessibilityLabel("Stark company logo")
            }
            Spacer()
        }
        .padding()
    }
}
