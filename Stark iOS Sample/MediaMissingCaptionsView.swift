import SwiftUI
import AVKit

struct MediaMissingCaptionsView: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("Media Missing Captions/Descriptions")
                .font(.title)
                .padding(.top)
            VStack(alignment: .leading, spacing: 20) {
                Text("Failing Example:").font(.headline)
                VideoPlayer(player: AVPlayer(url: URL(string: "https://www.w3schools.com/html/mov_bbb.mp4")!))
                    .frame(height: 200)
                Text("No captions or description provided.")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text("Passing Example:")
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                VideoPlayer(player: AVPlayer(url: URL(string: "https://www.w3schools.com/html/mov_bbb.mp4")!))
                    .frame(height: 200)
                    .accessibilityLabel("Big Buck Bunny video. A rabbit outsmarts two hunters.")
                Text("Captions: [Sample caption text here]")
                    .font(.caption)
                    .foregroundColor(.primary)
            }
            Spacer()
        }
        .padding()
    }
}
