//
//  ApiCaller.swift
//  NetflixClone
//
//  Created by Arthur Damous on 10/05/22.
//

import Foundation

struct Constants{
    static let API_KEY = "d3df92bb8a7cd50ac1c84cc758fed45c"
    static let BASE_URL = "https://api.themoviedb.org"
}

enum APIError : Error {
    case failedToGetData
}

class ApiCaller{
    
    static let shared = ApiCaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url =
                URL(string: "\(Constants.BASE_URL)/3/trending/all/day?api_key=\(Constants.API_KEY)")
        else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, _, error in
            guard let data = data, error == nil else {
                return
            }
        
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }catch{
                completion(.failure(error))
            }
            
        }
        
        task.resume()
        
    }
    
}
