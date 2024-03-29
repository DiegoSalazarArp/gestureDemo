//
//  Card.swift
//  gestureDemo
//
//  Created by Diego Salazar Arp on 23-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct Card: View {
    
    let tapped: Bool
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack {
            Image("dog")
                .resizable()
                .scaleEffect(self.scale)
                .frame(width:300, height:200)
            .gesture(MagnificationGesture()
                .onChanged { value in
                    self.scale = value.magnitude
                }
                
            
            )
            Text("Card")
                .font(.largeTitle)
                .foregroundColor(Color.white)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
            .background(self.tapped ? Color.orange : Color.purple)
            .cornerRadius(30)
    }
}

#if DEBUG
struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}
#endif
