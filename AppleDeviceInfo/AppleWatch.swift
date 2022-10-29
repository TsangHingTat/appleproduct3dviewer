//
//  Watch.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI

struct AppleWatchView: View {
    var body: some View {
        List {
            Section {
                NavigationLink(destination: ThreeDHView(name: "Apple Watch S7 Blue", title: "Apple Watch Series 7")) {
                    AppleWatchMenuNavBar(title: "Apple Watch Series 7 (Blue)", image: "applewatch.watchface")
                }
                NavigationLink(destination: ThreeDHView(name: "Apple Watch S7 Green", title: "Apple Watch Series 7")) {
                    AppleWatchMenuNavBar(title: "Apple Watch Series 7 (Green)", image: "applewatch.watchface")
                }
                NavigationLink(destination: ThreeDHView(name: "Apple Watch S7 Product Red", title: "Apple Watch Series 7")) {
                    AppleWatchMenuNavBar(title: "Apple Watch Series 7 (Product Red)", image: "applewatch.watchface")
                }
                NavigationLink(destination: ThreeDHView(name: "Apple Watch S7 Starlight", title: "Apple Watch Series 7")) {
                    AppleWatchMenuNavBar(title: "Apple Watch Series 7 (Starlight)", image: "applewatch.watchface")
                }
                NavigationLink(destination: ThreeDHView(name: "Apple Watch S7 Midnight", title: "Apple Watch Series 7")) {
                    AppleWatchMenuNavBar(title: "Apple Watch Series 7 (Midnight)", image: "applewatch.watchface")
                }
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "Apple Watch SE", title: "Apple Watch SE")) {
                    AppleWatchMenuNavBar(title: "Apple Watch SE", image: "applewatch.watchface")
                }
            }

            Section {
                NavigationLink(destination: ThreeDHView(name: "Apple Watch S3", title: "Apple Watch Series 3")) {
                    AppleWatchMenuNavBar(title: "Apple Watch Series 3", image: "applewatch.watchface")
                }
            }
            
        }
        .navigationTitle("Apple Watch")
    }
}


struct AppleWatchMenuNavBar: View {
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

struct Previews_AppleWatch_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchView()
    }
}

