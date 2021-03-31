//
//  GetDatas.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 31/03/21.
//

import Foundation
    
class GetDatas {
    public var countryList: [CountryData] = []
    
    func getDataCountries(){
        let headers = [
            "x-rapidapi-key": "a3458d0b7emshb75446d4503b860p172759jsnc0a97fbc09b2",
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://covid-19-data.p.rapidapi.com/country?name=brazil")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
            
                if httpResponse?.statusCode == 200 {
                do {
                    guard let data = data else {
                        print("Error data")
                        return
                    }
                    let res = try JSONDecoder().decode([CountryData].self, from: data)
                    self.countryList = res
                    
//                    DispatchQueue.main.sync {
//                        self.chapterTableViewOutlet.reloadData()
//                    }
                } catch let error {
                    print(error)
                }
            }
            }
        })
        
        

        dataTask.resume()
    }
}
