import SwiftUI

struct ColorContrastIssuesView: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("Color Contrast & Color-Only Info")
                .font(.title)
                .padding(.top)
            VStack(alignment: .leading, spacing: 20) {
                Text("Failing Examples:").font(.headline)
                Text("Low contrast text")
                    .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(8)
                HStack {
                    Text("Red means error, green means success!")
                        .foregroundColor(.primary)
                    Circle().fill(Color.red).frame(width: 20, height: 20)
                    Circle().fill(Color.green).frame(width: 20, height: 20)
                }
                Text("Passing Examples:")
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Text("High contrast text")
                    .foregroundColor(.black)
                    .padding(8)
                    .background(Color.yellow)
                    .cornerRadius(8)
                HStack {
                    Image(systemName: "xmark.octagon.fill").foregroundColor(.red)
                    Text("Error")
                    Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                    Text("Success")
                }
            }
            Spacer()
        }
        .padding()
    }
}
