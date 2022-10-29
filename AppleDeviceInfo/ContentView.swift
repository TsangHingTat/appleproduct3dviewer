//
//  ContentView.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 4/4/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showabout = false
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Newest"))  {
                    VStack(alignment: .leading) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top, spacing: 0) {
                                ViewView(name: "iPhone 13 Green", title: "iPhone 13, iPhone 13 mini")
                                ViewView(name: "iPhone 13 Pro  Alpine Green", title: "iPhone 13 Pro, iPhone 13 Pro MAX")
                                ViewView(name: "iPhone SE Midnight", title: "iPhone SE")
                                ViewView(name: "iPhone SE Product Red", title: "iPhone SE")
                                ViewView(name: "iPhone SE Starlight", title: "iPhone SE")
                                ViewView(name: "iPad Air", title: "iPad Air")
                                ViewView(name: "Studio Display", title: "Studio Display")
                                ViewView(name: "Mac Studio", title: "Mac Studio")
                            }
                            
                        }
                        .frame(height: 185)
                        
                    }
                    
                }
                Section(header: Text("All")) {
                    NavigationLink(destination: MacView()) {
                        MenuNavBar(title: "Mac", image: "desktopcomputer")
                    }
                    NavigationLink(destination: iPhoneView()) {
                        MenuNavBar(title: "iPhone", image: "iphone")
                    }
                    NavigationLink(destination: iPadView()) {
                        MenuNavBar(title: "iPad", image: "ipad")
                    }
                    NavigationLink(destination: AppleWatchView()) {
                        MenuNavBar(title: "Apple Watch", image: "applewatch")
                    }
                    NavigationLink(destination: AppleTVView()) {
                        MenuNavBar(title: "Apple TV", image: "appletv.fill")
                    }
                    NavigationLink(destination: AirPodsView()) {
                        MenuNavBar(title: "AirPods", image: "airpods")
                    }
                    NavigationLink(destination: HomePodminiView()) {
                        MenuNavBar(title: "HomePod mini", image: "homepodmini.2")
                    }
                    NavigationLink(destination: AirTagView()) {
                        MenuNavBar(title: "AirTag", image: "airtag")
                    }
                }
                NavigationLink(destination: aboutView()) {
                    MenuNavBar(title: "About this app", image: "info.circle")
                }
            }
            .navigationTitle("Apple Product")
            
            MacView()
        }
        
        
    }
}

struct aboutView: View {
    var body: some View {
        List {
            HStack {
                Spacer()
                Image("app")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .cornerRadius(50)
                Spacer()
            }
            HStack {
                Spacer()
                Text("AppleProduct3DViewer")
                    .font(.title)
                Spacer()
            }
            
            Text("3D Models are download from apple.com")
            
            Text("Copyright 2020-2022 TsangHingTat, All Rights Reserved.")
            
            Text("Apple, the Apple logo, Mac, Macintosh, iPod, iPhone, iPad, and Apple Watch are trademarks of Apple Inc.")
        }
        .navigationTitle("About")
    }
}


struct MenuNavBar: View {
    var title: String
    var image: String
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Image(systemName: image)
                    .font(Font.title)
            }
            .frame(width: 30, height: 30)
            Text(title)
                .font(.headline)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
