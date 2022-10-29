//
//  File.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 4/4/2022.
//

import SwiftUI

struct MacView: View {
    var body: some View {
        List {
            Section(header: Text("Newest"))  {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 0) {
                            ViewView(name: "Studio Display", title: "Studio Display")
                            ViewView(name: "Mac Studio", title: "Mac Studio")
                        }
                    }
                        
                }
                    .frame(height: 185)
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "MacBook Air", title: "MacBook Air")) {
                    MacMenuNavBar(title: "MacBook Air", image: "laptopcomputer")
                }
                NavigationLink(destination: ThreeDHView(name: "MacBook Pro 14", title: "MacBook Pro 14 inch")) {
                    MacMenuNavBar(title: "MacBook Pro 14 inch", image: "laptopcomputer")
                }
                NavigationLink(destination: ThreeDHView(name: "MacBook Pro 16", title: "MacBook Pro 16 inch")) {
                    MacMenuNavBar(title: "MacBook Pro 16 inch", image: "laptopcomputer")
                }
                NavigationLink(destination: ThreeDHView(name: "M1 MacBook Pro 13", title: "M1 MacBook Pro 13 inch")) {
                    MacMenuNavBar(title: "M1 MacBook Pro 13 inch", image: "laptopcomputer")
                }
                NavigationLink(destination: ThreeDHView(name: "iMac 24", title: "24 inch iMac")) {
                    MacMenuNavBar(title: "24 inch iMac", image: "desktopcomputer")
                }
                NavigationLink(destination: ThreeDHView(name: "Mac mini", title: "Mac mini")) {
                    MacMenuNavBar(title: "Mac mini", image: "macmini")
                }
                NavigationLink(destination: ThreeDHView(name: "Mac Studio", title: "Mac Studio")) {
                    MacMenuNavBar(title: "Mac Studio", image: "macmini")
                }
                NavigationLink(destination: ThreeDHView(name: "Mac Pro", title: "Mac Pro")) {
                    MacMenuNavBar(title: "Mac Pro", image: "macpro.gen3")
                }
                NavigationLink(destination: ThreeDHView(name: "Studio Display", title: "Studio Display")) {
                    MacMenuNavBar(title: "Studio Display", image: "display")
                }
                NavigationLink(destination: ThreeDHView(name: "Pro Display XDR", title: "Pro Display XDR")) {
                    MacMenuNavBar(title: "Pro Display XDR", image: "display")
                }
                
            }
        }
        .navigationTitle("Mac")
    }
}


struct MacMenuNavBar: View {
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

struct Previews_Mac_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MacView()
        }
    }
}
