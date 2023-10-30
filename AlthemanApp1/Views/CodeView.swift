//
//  CodeView.swift
//  AlthemanApp1
//
//  Created by Nathan Patterson on 10/30/23.
//

import SwiftUI

struct CodeView: View {
    @Binding var snippet: Snippet
    var body: some View {
        VStack {
            TextField("", text: $snippet.title)
            TextEditor(text: $snippet.code)
        }
    }
}
