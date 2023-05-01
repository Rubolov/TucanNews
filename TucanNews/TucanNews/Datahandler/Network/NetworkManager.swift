

import UIKit

protocol NetworkManagerDelegate: class {
  func didGetNews(news: [NewsObject])
}

class NetworkManager {
  
  weak var delegate: NetworkManagerDelegate?
  
  func getNews() {
    DispatchQueue.main.async {
      guard let remoteUrl = URL(string: "https://api.npoint.io/906373c9279cb6654ae6") else { return }
      let request = URLRequest(url: remoteUrl)
      
      URLSession.shared.dataTask(with: request) { data, resp, error in
        if let data = data {
          if let decodedResp = try? JSONDecoder().decode(NewsResponseObject.self, from: data) {
            DispatchQueue.main.async {
              self.delegate?.didGetNews(news: decodedResp.items)
            }
          }
        }
      }.resume()
    }
  }
  
}
