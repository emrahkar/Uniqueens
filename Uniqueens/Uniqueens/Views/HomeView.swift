//
//  HomeView.swift
//  Uniqueens
//
//  Created by Emrah Karabulut on 25.08.2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var vm: ProductViewModel
    
    let columns = [
        GridItem(.adaptive(minimum: 180))
        
    ]
    
    var body: some View {
        
        ZStack {
            
            Color.MyTheme.customLightPink.ignoresSafeArea()
                    
            VStack {
                
                HStack(spacing: 12) {
                            ForEach(ProductType.allCases, id: \.self) {type in
                                
                                Button {
                                    vm.productType = type
                                } label: {
                                    Text(type.rawValue)
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .foregroundColor(vm.productType == type ? Color.MyTheme.customPink : Color.MyTheme.customWhite)
                                        .background(
                                            Capsule()
                                                .fill(Color.MyTheme.customWhite)
                                                .opacity(0.2)
                                                .blur(radius: 3)
                                                .padding(-5)
                                                .opacity(vm.productType == type ? 1.0 : 0.0)
                                        )
                                }
                            }
                        }
                        .frame(width: 400, height: 50)
                        .background(Color.MyTheme.customGray)
                
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10){
                        ForEach(vm.filteredProducts) { product in
                            ProductView(product: product)
                        }
                    }
                    .padding(.horizontal, 10)
                }
            }
            .onChange(of: vm.productType) { newValue in
                vm.filterProductsByType()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ProductViewModel())
        
        
    }
}
