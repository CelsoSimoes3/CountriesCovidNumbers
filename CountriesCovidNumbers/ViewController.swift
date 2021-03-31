//
//  ViewController.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 31/03/21.
//

import UIKit


class ViewController: UIViewController {

    var brazilDatas: [CountryData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let data =  GetDatas().getDataCountries()
        brazilDatas = data.
    }


}

