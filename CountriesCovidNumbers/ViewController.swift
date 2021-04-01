//
//  ViewController.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 31/03/21.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var DataOutlet: UILabel!
    
    var arrayOfDatas: [Int] = [0, 1, 2]
    var countryDatas: [properties] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is PageViewController {
                let vc = segue.destination as? PageViewController
                vc?.countryNamesArray = countryDatas
        }
    }
    
    func PopUpAlert(pageValue: Int){
        
        
        let httpResponse = GetDatas()
        httpResponse.getDataCountries(page: pageValue, completionHandler: { properties, error  in
            print (properties!)
            self.countryDatas.append(properties)
            //print("\n\(String(describing: properties?.first?.code))")
            DispatchQueue.main.async {
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
        })
    }
    
    @IBAction func StartButton(_ sender: Any) {
        PopUpAlert(pageValue: 0)
        performSegue(withIdentifier: "fromHomeToPageView", sender: nil)
        
    }
}
