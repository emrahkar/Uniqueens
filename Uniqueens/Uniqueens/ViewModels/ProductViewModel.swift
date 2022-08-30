//
//  ProductViewModel.swift
//  Uniqueens
//
//  Created by Emrah Karabulut on 25.08.2022.
//

import Foundation
import SwiftUI



class ProductViewModel: ObservableObject {
    
    @Published var productType: ProductType = .earrings
    @Published var filteredProducts: [Product] = []
    @Published var cartProducts: [Product] = []
    @Published var cartTotalAmount: Double = 0
    @Published var favoriteCart: [Product] = []
    @Published var totalQuantity: Int = 0
    
    @Published var productList: [Product] = [
    
        Product(name: "Daisy of the Fairy Earrings", price: 6.00, productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "daisy", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "margaret", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 9.00, productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "pop", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "redelegance", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 3.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .earrings, imageName: "sound", description: "", rating: 3, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: 6.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "allaboutbutt", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "artemis", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 5.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "claymarch", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "colorfuldots", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 4.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "goldsummer", description: "", rating: 5, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: 7.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "callilope", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 3.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "clio", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "doubletrouble", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 1.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "euterpe", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 9.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "koko", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: 11.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "eratomcflower", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcbucketpurple", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 2.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcflower", description: "", rating: 2, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 5.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcflowerblack", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 8.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcrose", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .rings, imageName: "rosering", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .rings, imageName: "violetring", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: 5.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "grassbutterflies", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 10.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "heartshearts", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 8.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "magiclake", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 4.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "sealife", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 6.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "smilebehapy", description: "", rating: 5, isOnSale: false),
        
        Product(name: "Daisy of the Fairy Earrings", price: 9.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "mixandmatch", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 7.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "neversee", description: "", rating: 3, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 8.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "setrojo", description: "", rating: 5, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 6.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "setrose", description: "", rating: 4, isOnSale: false),
        Product(name: "Daisy of the Fairy Earrings", price: 4.00, productCode: "", availability: "", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "setviolet", description: "", rating: 3, isOnSale: false),
    
    ]
    
    init() {
        filterProductsByType()
    }
    
    func filterProductsByType() {
        
        let filters = self.productList.lazy.filter { product in
            return product.productType == self.productType
        }
        
       DispatchQueue.main.async {
            self.filteredProducts = filters.compactMap({ product in
                return product
            })
        
        }
    }
    
    
    func addToCart(product: Product) {
        
        if !self.cartProducts.contains(product) {

            DispatchQueue.main.async {
                self.cartProducts.append(product)
            }
            
            totalQuantity += 1
            cartTotalAmount += product.price
        }
    }
    
    
    func removeFromCart(product: Product){
        DispatchQueue.main.async {
            self.cartProducts = self.cartProducts.filter({$0.id != product.id })
        }
        
        if cartTotalAmount >= product.price {
            cartTotalAmount -= product.price
        }
    }
    
    
    func addToFavorites(product: Product) {
        
        DispatchQueue.main.async {
            self.favoriteCart.append(product)
        }
    }
    
    
    func removeFromFavorites(product: Product) {
        DispatchQueue.main.async {
           
            self.favoriteCart = self.favoriteCart.filter{$0.id != product.id}
        }
    }
    
    
}
