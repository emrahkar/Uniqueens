//
//  FavoritesView.swift
//  Uniqueens
//
//  Created by Emrah Karabulut on 27.08.2022.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var vm: ProductViewModel
    var body: some View {
        ScrollView {
            VStack{
                ForEach(vm.favoriteCart) { product in
                    FavoritesListView(product: product)
                        .environmentObject(vm)
                }
            }
            .padding()
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            .environmentObject(ProductViewModel())
    }
}
