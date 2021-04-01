//
//  ViewController.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 31/03/21.
//

import UIKit


class ViewController: UIViewController {
    
    var brazilDatas: [properties] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
        func PopUpAlert(){
            var httpResponse = GetDatas()
            httpResponse.getDataCountries(completionHandler: { properties, error  in
                print (httpResponse.httpResponseView)
                print (properties)
                if error == nil{
                    let alert = UIAlertController(title: "Test",
                                                  message: "Deu tudo certo",
                                                  preferredStyle: .alert)
                    
                    let okAction = UIAlertAction(title: "Ok",
                                                 style: .default,
                                                 handler: nil)
                    alert.addAction(okAction)
                    
                    self.present(alert, animated: true, completion: nil)
                }else{
                    let alert = UIAlertController(title: "Error",
                                                  message: "ops, algo deu errado, tente novamente",
                                                  preferredStyle: .alert)
                    
                    let okAction = UIAlertAction(title: "Ok",
                                                 style: .default,
                                                 handler: nil)
                    alert.addAction(okAction)
                    
                    self.present(alert, animated: true, completion: nil)
                }
        }
    
    @IBAction func StartButton(_ sender: Any) {
        
            DispatchQueue.main.async {
                self.PopUpAlert()
            }
        }
        
        
    }
    
    
}

