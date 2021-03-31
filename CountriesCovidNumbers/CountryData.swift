//
//  CountryData.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 31/03/21.
//

import Foundation

public struct CountryData: Decodable {
    public let country: String
    public let code: String
    public let confirmed: Int
    public let recovered: Int
    public let critical: Int
    public let deaths: Float
    public let latitude: Float
    public let longitude: Int
    public let lastChange: Data
    public let lastUpdate: Data
}
