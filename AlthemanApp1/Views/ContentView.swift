//
//  ContentView.swift
//  AlthemanApp1
//
//  Created by Nathan Patterson on 10/26/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationSplitView {
            List {
                Section("Snippets") {
                    NavigationLink("All") {
                        SnippetsView()
                            .environment(MySnippets())
                        }
                    }
                    Section("Favs") {
                        ForEach(1...4, id:\.self) { number in
                            Text("Fav # \(number)")
                        }
                    }
                }
            } content: {
                ContentUnavailableView("not available", systemImage: "exclamationmark.triangle.fill", description: Text("this ain't here"))
            } detail: {
                ContentUnavailableView("code", systemImage: "", description: Text("select one to see"))
            }
            
        }
    }

#Preview {
    ContentView()
}
