import Foundation

class ImageDownloader : ObservableObject {
    @Published var downloadData: Data? = nil

    func downloadImage(url: String) {

        guard let imageURL = URL(string: url) else { return }

        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.downloadData = data
            }
        }
    }
}

class ImageLoader: ObservableObject {
    @Published var data: Data?

    func loadImage(fromURL url: URL?) {
        guard let url else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
