//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by Victor Oka on 11/07/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            Text("Josua Tree National Park")
                .font(.subheadline)
                .color(.secondary)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
