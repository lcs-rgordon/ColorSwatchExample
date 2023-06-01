//
//  ContentView.swift
//  ColorSwatchExample
//
//  Created by Russell Gordon on 2023-06-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var hue: Double = 350.0
    
    var complementary: Double {
        
        let result = (hue + 180.0).remainder(dividingBy: 360.0)
        print(result)
        return result
        
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color(hue: hue/360.0, saturation: 80.0/100.0, brightness: 90.0/100.0))
                .frame(width: 200, height: 200)
            Rectangle()
                .foregroundColor(Color(hue: complementary/360.0, saturation: 80.0/100.0, brightness: 90.0/100.0))
                .frame(width: 200, height: 200)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
