import UIKit

struct Garden: Decodable {
    let name: String
}

struct Gardens: Decodable {
    let garden: Garden
}

let url : URL = URL(string: "https://leaflet.life/api/rpc/getGardens")!

let jsonObject: [String: Any] = [
    "params": []
]
let valid = JSONSerialization.isValidJSONObject(jsonObject)

var request = URLRequest(url: url)
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
request.httpMethod = "POST"
request.httpBody = jsonObject

let task = URLSession.shared.dataTask(with: url) { data, response, error in
    if let data = data {
        if let gardens = try? JSONDecoder().decode([Gardens].self, from: data) {
            print(gardens)
        } else {
            print("Invalid Response")
        }
    } else if let error = error {
        print("HTTP Request failed \(error)")
    }
}
 
task.resume()
