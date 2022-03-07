//
//  ContentView.swift
//  Module4Lesson7Challenge
//
//  Created by Anand Narayan on 2022-02-24.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedColorRed: Double = 0.2
    @State var selectedColorGreen: Double = 0.3
    @State var selectedColorBlue: Double = 0.4
    var body: some View {
    
        GeometryReader { geo in
            TabView {
                ForEach(1..<50) { index in
                    ZStack {
                        Rectangle().foregroundColor(Color(red: selectedColorRed, green: selectedColorGreen, blue: selectedColorBlue))
                        Image(systemName: "\(index).circle")
                            .resizable()
                            .clipped()
                            .aspectRatio(contentMode: .fit)
                            
                    }.frame(width: geo.size.width-40, height: geo.size.height-100, alignment: .center)
                        .cornerRadius(15)
                        .shadow(color: .gray, radius: 10)
                    
                    
                }
            }
            .onTapGesture {
                self.selectedColorRed = Double.random(in: 0..<1)
                self.selectedColorGreen = Double.random(in: 0..<1)
                self.selectedColorBlue = Double.random(in: 0..<1)
               
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }


    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
