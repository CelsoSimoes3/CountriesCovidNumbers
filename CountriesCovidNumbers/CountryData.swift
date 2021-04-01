//
//  CountryData.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 31/03/21.
//

import Foundation

public struct properties: Decodable {
    public let country: String
    public let code: String
    public let confirmed: Int
    public let recovered: Int
    public let critical: Int
    public let deaths: Int
    public let latitude: Double
    public let longitude: Double
    public let lastChange: String
    public let lastUpdate: String
}
