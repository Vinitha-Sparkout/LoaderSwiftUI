//
//  ContentView.swift
//  ActivityIndicator
//
//  Created by Vinitha on 16/08/20.
//  Copyright © 2020 Vinitha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showActivity = false
    @State var spinner1 = true
    var body: some View {
        ZStack {
            Button(action:{
                self.showActivity.toggle()
                self.spinner1.toggle()
            })
            {
                Text("Custom Indicator")
            }
            
            if self.showActivity && self.spinner1 {
            GeometryReader { (geometry: GeometryProxy) in
                VStack {
                CustomLoadingSpinner()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.green)
                Text("Please Wait...")
                }
                .padding(20)
                .background(Color.white)
                .cornerRadius(15)
              
            }.background(Color.black.opacity(0.45)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                self.showActivity.toggle()
                
            })
                
             }
            else if !spinner1 && self.showActivity {
                  GeometryReader { (geometry: GeometryProxy) in
                CustomCircularLoader()
                  }
                  .background(Color.black.opacity(0.45)
                      .edgesIgnoringSafeArea(.all)
                      .onTapGesture {
                      self.showActivity.toggle()
                      
                  })
            }
            
        }
 
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
