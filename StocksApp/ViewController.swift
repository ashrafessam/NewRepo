//
//  ViewController.swift
//  StocksApp
//
//  Created by Ashraf Essam on 27/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let stockListVM = StockListViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stockListVM.load()
    }
    
    


}

