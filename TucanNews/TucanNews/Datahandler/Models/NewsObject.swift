

import UIKit

struct NewsResponseObject: Codable {
  
  let items: [NewsObject]
  
}

struct NewsObject: Codable {
  
  let title: String
  let date: String
  let teaser: String
  let image: String
  let text: String
  
}
