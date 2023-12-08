import SwiftUI

struct AsyncImageView: View {
    @StateObject private var loader = ImageLoader()
    let url: URL?

    var body: some View {
        Group {
            if let imageData = loader.data, let uiImage = UIImage(data: imageData) {
                Image(uiImage: uiImage)
                    .resizable()
            } else {
                Rectangle().foregroundColor(.gray)
            }
        }
        .onAppear {
            loader.loadImage(fromURL: url)
        }
    }
}
