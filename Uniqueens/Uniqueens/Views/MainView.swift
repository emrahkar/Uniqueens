//
//  HomeView.swift
//  Uniqueens
//
//  Created by Emrah Karabulut on 21.08.2022.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var vm: ProductViewModel = ProductViewModel()
    @State var selectedTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
       
        VStack(spacing: 0) {
            
            HStack{
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundColor(Color.MyTheme.customGray)
                TextField("Search", text: .constant(""))
                    .disabled(true)
            }
            .padding(.vertical)
            .padding(.horizontal)
            .background(
                    Capsule()
                        .strokeBorder(Color.MyTheme.customGray, lineWidth: 0.5)
            
            )
            .frame(width: 300, height: 12)
            .padding(.top, 60)
            .padding(.bottom, 30)
    
            
            TabView(selection: $selectedTab) {
                
                HomeView()
                    .tag(Tab.home)
                FavoritesView()
                    .tag(Tab.favorites)
                Text("Profile")
                    .tag(Tab.profile)
                Text("Cart")
                    .tag(Tab.cart)
            }
            
            
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.self) { tab in
                    
                    Button {
                        selectedTab = tab
                    } label: {
                        VStack{
                            
                            Image(tab.rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .background(
                                    Color.MyTheme.customGray
                                        .opacity(0.3)
                                        .cornerRadius(6)
                                        .blur(radius: 6)
                                        .padding(-8)
                                        .opacity(selectedTab == tab ? 1.0 : 0.0)
                                )
                            
                            Text(tab.rawValue)
                                .font(.caption)
                                .foregroundColor(Color.MyTheme.customGray)
                                .bold()
                        }
                        .padding(.top, 6)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding([.bottom, .horizontal])
            .padding(.bottom, 8)
        }
        .environmentObject(vm)
        .background(Color.MyTheme.customPink)
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


enum Tab: String, CaseIterable {
     case home = "Home"
     case favorites = "Favorites"
     case profile = "Profile"
     case cart = "Cart"
}
