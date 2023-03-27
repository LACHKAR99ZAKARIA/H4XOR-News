//
//  ContentView.swift
//  H4XOR News
//
//  Created by zakaria lachkar on 27/03/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) {  post in
                HStack{
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            
            .navigationTitle(K.appName)
        }
        .onAppear {
            self.networkManager.featchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

