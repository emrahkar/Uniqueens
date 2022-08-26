//
//  ProductViewModel.swift
//  Uniqueens
//
//  Created by Emrah Karabulut on 25.08.2022.
//

import Foundation


class ProductViewModel: ObservableObject {
    
    @Published var productType: ProductType = .earrings
    
    @Published var filteredProducts: [Product] = []
    
    @Published var productList: [Product] = [
    
        Product(name: "Daisy of the Fairy Earrings", price: "10.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "daisy", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "16.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "margaret", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "8.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "pop", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "7.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "redelegance", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "sound", description: "", rating: 3, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .bracelets, imageName: "allaboutbutt", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .bracelets, imageName: "artemis", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .bracelets, imageName: "claymarch", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .bracelets, imageName: "colorfuldots", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .bracelets, imageName: "goldsummer", description: "", rating: 5, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .necklaces, imageName: "callilope", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .necklaces, imageName: "clio", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .necklaces, imageName: "doubletrouble", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .necklaces, imageName: "euterpe", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .necklaces, imageName: "koko", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .pins, imageName: "eratomcflower", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .pins, imageName: "mcbucketpurple", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .pins, imageName: "mcflower", description: "", rating: 2, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .pins, imageName: "mcflowerblack", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .pins, imageName: "mcrose", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .rings, imageName: "rosering", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .rings, imageName: "violetring", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .anklets, imageName: "grassbutterflies", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .anklets, imageName: "heartshearts", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .anklets, imageName: "magiclake", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .anklets, imageName: "sealife", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .anklets, imageName: "smilebehapy", description: "", rating: 5, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .sets, imageName: "mixandmatch", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .sets, imageName: "neversee", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .sets, imageName: "setrojo", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .sets, imageName: "setrose", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: "3.00€", productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .sets, imageName: "setviolet", description: "", rating: 3, isOnSale: false),
    
    ]
    
    init() {
        filterProductsByType()
    }
    
    func filterProductsByType() {
        
        DispatchQueue.global(qos: .userInteractive).async {
            let filters = self.productList.lazy.filter { product in
                return product.productType == self.productType
            }
            
            DispatchQueue.main.async {
                self.filteredProducts = filters.compactMap({ product in
                    return product
                })
            }
        }
        
        
    }
}
