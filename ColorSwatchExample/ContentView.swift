//
//  ContentView.swift
//  ColorSwatchExample
//
//  Created by Russell Gordon on 2023-06-01.
//

import SwiftUI

struct ContentView: View {
    
    // Array of values from 0.0 to 360.0 incremented by 1,0
    let hues = Array(stride(from: 0.0, through: 360.0, by: 1.0))
        
    var body: some View {
        HStack(spacing: 0) {
            
            // Iterate over the array and print the values
            ForEach(hues, id: \.self) { currentHue in
                let _ = print(currentHue)
                Rectangle()
                    .foregroundColor(Color(hue: currentHue/360.0, saturation: 80.0/100.0, brightness: 90.0/100.0))
                    .frame(width: 1, height: 50)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
