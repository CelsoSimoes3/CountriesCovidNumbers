//
//  Countries.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 01/04/21.
//

import Foundation

enum Countries: CaseIterable {

    case Brazil
    case Italy
    case Cuba

    var identifier: String {
        switch self {
        case .Brazil:
            return "Brazil"
        case .Italy:
            return "Italy"
        case .Cuba:
            return "Cuba"
        }
    }
}
