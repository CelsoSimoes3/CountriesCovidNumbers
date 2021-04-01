//
//  PageViewController.swift
//  CountriesCovidNumbers
//
//  Created by Celso Junio Simões de Oliveira Santos on 01/04/21.
//

import UIKit

class PageViewController: UIPageViewController{
    
    var countryNamesArray: [properties] = []
    var arrayOfPageView: [PagesView] = [PagesView()]
    
//    func pageViews(page: Int){
//        if page == 0{
//            DataOutlet.text = brazilDatas[page]
//        } else if page == 1 {
//            DataOutlet.text
//        } else {
//            DataOutlet.text = String(countryDatas[page])
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        if let firstViewController = arrayOfPageView.first {
                    setViewControllers([firstViewController],
                                       direction: .forward,
                                       animated: true,
                                       completion: nil)
        }
    }
}

extension PageViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    
}
