//
//  HomePod mini.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI

struct HomePodminiView: View {
    var body: some View {
        List {
            Section {
                NavigationLink(destination: ThreeDHView(name: "HomePod mini Gray", title: "HomePod mini")) {
                    HomePodminiMenuNavBar(title: "HomePod mini (Gray)", image: "homepodmini")
                }
                NavigationLink(destination: ThreeDHView(name: "HomePod mini Blue", title: "HomePod mini")) {
                    HomePodminiMenuNavBar(title: "HomePod mini (Blue)", image: "homepodmini")
                }
                NavigationLink(destination: ThreeDHView(name: "Homepod mini Orange", title: "HomePod mini")) {
                    HomePodminiMenuNavBar(title: "HomePod mini (Orange)", image: "homepodmini")
                }
                
                NavigationLink(destination: ThreeDHView(name: "Homepod mini Yellow", title: "HomePod mini")) {
                    HomePodminiMenuNavBar(title: "HomePod mini (Yellow)", image: "homepodmini")
                }
                NavigationLink(destination: ThreeDHView(name: "Homepod mini White", title: "HomePod mini")) {
                    HomePodminiMenuNavBar(title: "HomePod mini (White)", image: "homepodmini")
                }
            }
         
            
        }
        .navigationTitle("HomePod mini")
    }
}


struct HomePodminiMenuNavBar: View {
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

struct Previews_HomePodmini_Previews: PreviewProvider {
    static var previews: some View {
        HomePodminiView()
    }
}

