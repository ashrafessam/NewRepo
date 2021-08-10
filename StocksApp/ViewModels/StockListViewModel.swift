//
//  StockListViewModel.swift
//  StocksApp
//
//  Created by Ashraf Essam on 27/07/2021.
//

import Foundation

class StockListViewModel {
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.stocks.count
    }
    
    func articleAtIndex(_ index: Int) -> StockViewModel {
        let stock = self.stocks[index]
        return StockViewModel(stock: stock)
    }
    
    
    var searchTerm: String = ""
    var stocks: [StockViewModel] = [StockViewModel]()
    
    func load(){
        fetchStocks()
    }
    
    private func fetchStocks(){
        Webservice().getStocks { stocks in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
    
}
