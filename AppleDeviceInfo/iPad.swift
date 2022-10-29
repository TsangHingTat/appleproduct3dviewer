//
//  iPad.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI

struct iPadView: View {
    var body: some View {
        List {
            Section(header: Text("Newest"))  {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 0) {
                            ViewView(name: "iPad Air", title: "iPad Air")
                        }
                    }
                        
                }
                    .frame(height: 185)
            }
            
            Section {
                NavigationLink(destination: ThreeDHView(name: "iPad Pro 11", title: "iPad Pro 11 inch")) {
                    iPadMenuNavBar(title: "iPad Pro 11 inch", image: "ipad")
                }
                NavigationLink(destination: ThreeDHView(name: "iPad Pro 12.9", title: "iPad Pro 12.9 inch")) {
                    iPadMenuNavBar(title: "iPad Pro 12.9 inch", image: "ipad")
                }
                NavigationLink(destination: ThreeDHView(name: "iPad Air", title: "iPad Air")) {
                    iPadMenuNavBar(title: "iPad Air", image: "ipad")
                }
                NavigationLink(destination: ThreeDHView(name: "iPad", title: "iPad")) {
                    iPadMenuNavBar(title: "iPad", image: "ipad.homebutton")
                }
                NavigationLink(destination: ThreeDHView(name: "iPad mini", title: "iPad mini")) {
                    iPadMenuNavBar(title: "iPad mini", image: "ipad.landscape")
                }
            }
            
        }
        .navigationTitle("iPad")
    }
}


struct iPadMenuNavBar: View {
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

struct Previews_iPad_Previews: PreviewProvider {
    static var previews: some View {
        iPadView()
    }
}
