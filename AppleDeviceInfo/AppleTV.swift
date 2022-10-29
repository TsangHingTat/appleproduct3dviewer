//
//  AppleTV.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI

struct AppleTVView: View {
    var body: some View {
        List {
            NavigationLink(destination: ThreeDHView(name: "Apple TV 4K", title: "Apple TV 4K")) {
                AppleTVMenuNavBar(title: "Apple TV 4K", image: "appletv.fill")
            }
            NavigationLink(destination: ThreeDHView(name: "Apple TV HD", title: "Apple TV HD")) {
                AppleTVMenuNavBar(title: "Apple TV HD", image: "appletv.fill")
            }
         
            
        }
        .navigationTitle("Apple TV")
    }
}


struct AppleTVMenuNavBar: View {
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

struct Previews_AppleTV_Previews: PreviewProvider {
    static var previews: some View {
        AppleTVView()
    }
}

