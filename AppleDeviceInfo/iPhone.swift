//
//  iPhone.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI

struct iPhoneView: View {
    var body: some View {
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
                        }
                        
                    }
                }
                
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Blue", title: "iPhone 13, iPhone 13 mini")) {
                    iPhoneMenuNavBar(title: "iPhone 13, iPhone 13 mini  (Blue)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Green", title: "iPhone 13, iPhone 13 mini")) {
                    iPhoneMenuNavBar(title: "iPhone 13, iPhone 13 mini  (Green)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Midnight", title: "iPhone 13, iPhone 13 mini")) {
                    iPhoneMenuNavBar(title: "iPhone 13, iPhone 13 mini  (Midnight)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Pink", title: "iPhone 13, iPhone 13 mini")) {
                    iPhoneMenuNavBar(title: "iPhone 13, iPhone 13 mini  (Pink)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Product Red", title: "iPhone 13, iPhone 13 mini")) {
                    iPhoneMenuNavBar(title: "iPhone 13, iPhone 13 mini  (Product Red)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Starlight", title: "iPhone 13, iPhone 13 mini")) {
                    iPhoneMenuNavBar(title: "iPhone 13, iPhone 13 mini  (Starlight)", image: "iphone")
                }
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Pro  Alpine Green", title: "iPhone 13 Pro, iPhone 13 Pro MAX")) {
                    iPhoneMenuNavBar(title: "iPhone 13 Pro, iPhone 13 Pro MAX (Alpine Green)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Pro  Silver", title: "iPhone 13 Pro, iPhone 13 Pro MAX")) {
                    iPhoneMenuNavBar(title: "iPhone 13 Pro, iPhone 13 Pro MAX (Silver)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Pro Gold", title: "iPhone 13 Pro, iPhone 13 Pro MAX")) {
                    iPhoneMenuNavBar(title: "iPhone 13 Pro, iPhone 13 Pro MAX (Gold)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Pro Graphite", title: "iPhone 13 Pro, iPhone 13 Pro MAX")) {
                    iPhoneMenuNavBar(title: "iPhone 13 Pro, iPhone 13 Pro MAX (Graphite)", image: "iphone")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone 13 Pro Sierra Blue", title: "iPhone 13 Pro, iPhone 13 Pro MAX")) {
                    iPhoneMenuNavBar(title: "iPhone 13 Pro, iPhone 13 Pro MAX (Sierra Blue)", image: "iphone")
                }
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "iPhone SE Midnight", title: "iPhone SE")) {
                    iPhoneMenuNavBar(title: "iPhone SE (Midnight)", image: "iphone.homebutton")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone SE Product Red", title: "iPhone SE")) {
                    iPhoneMenuNavBar(title: "iPhone SE (Product Red)", image: "iphone.homebutton")
                }
                NavigationLink(destination: ThreeDHView(name: "iPhone SE Starlight", title: "iPhone SE")) {
                    iPhoneMenuNavBar(title: "iPhone SE (Starlight)", image: "iphone.homebutton")
                }
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "iPhone 12", title: "iPhone 12, iPhone 12 mini")) {
                    iPhoneMenuNavBar(title: "iPhone 12, iPhone 12 mini", image: "iphone")
                }
            }
            
        }
        .navigationTitle("iPhone")
    }
}


struct iPhoneMenuNavBar: View {
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

struct Previews_iPhone_Previews: PreviewProvider {
    static var previews: some View {
        iPhoneView()
    }
}

