import Foundation

class APIService {
    static let shared = APIService()
    
    private let baseURL = "https://fakestoreapi.com/products/category/"
    
    func fetchProducts(category: String, completion: @escaping (Result<[Product], Error>) -> Void) {
        let urlString = baseURL + category
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            do {
                let products = try JSONDecoder().decode([Product].self, from: data)
                completion(.success(products))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
