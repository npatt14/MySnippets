//
//  SnippetsView.swift
//  AlthemanApp1
//
//  Created by Nathan Patterson on 10/30/23.
//

import SwiftUI
import Observation

struct Snippet: Identifiable {
    let id = UUID()
    var title: String
    var code: String
    var favorite: Bool = false
}
@Observable class MySnippets {
    var all: [Snippet] = []
}

struct SnippetsView: View {
    @State var mySnippets = MySnippets()
  //  @State private var mySnippets: [Snippet] = []
    @State private var searchable: String = ""
    var body: some View {
        List {
            ForEach($mySnippets.all, id: \.id) { $snippet in
                NavigationLink(snippet.title) {
                  CodeView(snippet: $snippet)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: {
                    mySnippets.all.append(Snippet(title: "Untitled", code: "Enter your code here!"))
                }, label: {
                    Image(systemName: "plus")
                })
            }
        }
        .searchable(text: $searchable )
    }
}
#Preview {
    SnippetsView()
}
