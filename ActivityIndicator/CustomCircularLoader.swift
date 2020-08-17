//
//  ShowCustomLoader.swift
//  ActivityIndicator
//
//  Created by Vinitha on 16/08/20.
//  Copyright © 2020 Vinitha. All rights reserved.
//

import SwiftUI

struct CustomCircularLoader: View {
    @State var animate = false

    var body: some View {
        VStack{
            Circle()
                .trim(from:0, to:0.8)
                .stroke(AngularGradient(gradient: .init(colors:[.red,.orange,.pink,.green,.red]),center: .center),style: StrokeStyle(lineWidth:8,lineCap: .round))
                    .frame(width:45, height:45)
                    .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                .animation(Animation.linear(duration:0.9).repeatForever(autoreverses: false))
            
            
        }
        .onAppear{
            self.animate.toggle()
        }
    }
}

struct CustomCircularLoader_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircularLoader()
    }
}
