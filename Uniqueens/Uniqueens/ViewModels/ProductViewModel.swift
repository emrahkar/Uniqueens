//
//  ProductViewModel.swift
//  Uniqueens
//
//  Created by Emrah Karabulut on 25.08.2022.
//

import Foundation
import SwiftUI
import Combine



class ProductViewModel: ObservableObject {
    
    @Published var productType: ProductType = .earrings
    @Published var filteredProducts: [Product] = []
    @Published var cartProducts: [Product] = []
    @Published var cartTotalAmount: Double = 0
    @Published var favoriteCart: [Product] = []
    @Published var totalQuantity: Int = 0
    
    @Published var searchText: String = ""
    @Published var searchIsActivated: Bool = false
    
    @Published var searchResults: [Product] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    @Published var productList: [Product] = [
    
        Product(name: "Daisy of the Fairy Earrings", price: 6.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "daisy", description: "", rating: 5, isOnSale: false),
        Product(name: "Margaret Earrings", price: 10.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "margaret", description: "", rating: 4, isOnSale: true),
        Product(name: "Pop Earrings", price: 7.50, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "6.05", quantity: 1, productType: .earrings, imageName: "pop", description: "", rating: 5, isOnSale: false),
        Product(name: "Red Elegance Earrings", price: 10.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 1, productType: .earrings, imageName: "redelegance", description: "", rating: 3, isOnSale: true),
        Product(name: "Sound of the Rain Earrings", price: 20.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .earrings, imageName: "sound", description: "", rating: 3, isOnSale: false),
        
        Product(name: "All About Butterflies", price: 12.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "allaboutbutt", description: "", rating: 4, isOnSale: false),
        Product(name: "Artemis", price: 8.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "artemis", description: "", rating: 3, isOnSale: false),
        Product(name: "Clay March Bracelets", price: 5.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "claymarch", description: "", rating: 3, isOnSale: false),
        Product(name: "Colorful Touch Bead", price: 5.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "colorfuldots", description: "", rating: 5, isOnSale: true),
        Product(name: "Gold Summer", price: 12.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .bracelets, imageName: "goldsummer", description: "", rating: 5, isOnSale: false),
        
        Product(name: "Callilope", price: 18.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "callilope", description: "", rating: 4, isOnSale: false),
        Product(name: "Clio", price: 20.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "clio", description: "", rating: 3, isOnSale: false),
        Product(name: "Double Trouble Crochet", price: 35.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "doubletrouble", description: "", rating: 5, isOnSale: false),
        Product(name: "Euterp Necklace", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "euterpe", description: "", rating: 3, isOnSale: false),
        Product(name: "Koko Necklace", price: 18.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .necklaces, imageName: "koko", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Erato Multi Color Flower", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "eratomcflower", description: "", rating: 5, isOnSale: false),
        Product(name: "Multi Color Bucket Purple", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcbucketpurple", description: "", rating: 3, isOnSale: false),
        Product(name: "Multi Color Flower Patterned", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcflower", description: "", rating: 2, isOnSale: false),
        Product(name: "Multi Color Flower Black", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcflowerblack", description: "", rating: 5, isOnSale: false),
        Product(name: "Multi Color Rose", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .pins, imageName: "mcrose", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Rose Ring", price: 10.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .rings, imageName: "rosering", description: "", rating: 5, isOnSale: false),
        Product(name: "Violet Ring", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .rings, imageName: "violetring", description: "", rating: 4, isOnSale: false),
        
        Product(name: "Grass Butterflies", price: 10.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "grassbutterflies", description: "", rating: 5, isOnSale: false),
        Product(name: "Hearts Hearts Hearts", price: 10.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "heartshearts", description: "", rating: 4, isOnSale: false),
        Product(name: "Magic Lake", price: 5.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "magiclake", description: "", rating: 5, isOnSale: false),
        Product(name: "Sea Life", price: 15.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "sealife", description: "", rating: 3, isOnSale: false),
        Product(name: "Smile Be Happy", price: 10.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .anklets, imageName: "smilebehapy", description: "", rating: 5, isOnSale: false),
        
        Product(name: "Mix and Match Stars", price: 14.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "mixandmatch", description: "", rating: 5, isOnSale: false),
        Product(name: "Never See", price: 12.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "neversee", description: "", rating: 3, isOnSale: false),
        Product(name: "Rojo Set", price: 30.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "setrojo", description: "", rating: 5, isOnSale: true),
        Product(name: "Set Rose", price: 30.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "setrose", description: "", rating: 4, isOnSale: false),
        Product(name: "Set Violet", price: 30.00, productCode: "RNBW001", availability: "In Stock", exTaxPrice: "", quantity: 0, productType: .sets, imageName: "setviolet", description: "", rating: 3, isOnSale: true),
    
    ]
    
    init() {
        filterProductsByType()
        addSubscribers()
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
        
      
            self.favoriteCart.append(product)
        
    }
    
    
    func removeFromFavorites(product: Product) {
        
           
            self.favoriteCart = self.favoriteCart.filter{$0.id != product.id}
        
    }
    
    func addSubscribers() {
//
//       $productList
//            .sink { [weak self] (returnedProducts) in
//                self?.productList = returnedProducts
//            }
//            .store(in: &cancellables)
        
        //updated product list
        $searchText
//            .combineLatest($productList)
//            .map { (text, startingProducts) -> [Product] in
//
//                guard !text.isEmpty  else {
//                    return startingProducts
//                }
//
//                let lowercaseText = text.lowercased()
//
//                return startingProducts.filter { (product) -> Bool in
//                    return product.name.lowercased().contains(lowercaseText) ||
//                    product.id.lowercased().contains(lowercaseText)
//
//                }
//            }
//            .sink { [weak self] (returnedProducts) in
//                self?.productList = returnedProducts
//            }
//            .store(in: &cancellables)
        
            //.combineLatest($productList)
            .map { searchText in
                    let lowercaseText = searchText.lowercased()
                     return self.productList.filter { product in
                         product.name.lowercased().contains(lowercaseText) || product.id.lowercased().contains(lowercaseText)
                }
            }
            .assign(to: &$searchResults)
    }
}
