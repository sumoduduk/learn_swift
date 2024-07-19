import Foundation

let url = URL(string: "https://api.example.com/data")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
  if let error = error {
    print("Error: \(error)")
    return
  }

  if let data = data {
    // Process the response data
    let responseString = String(data: data, encoding: .utf8)
    print("Response: \(responseString ?? "")")
  }
}

task.resume()
