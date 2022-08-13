//
//  ContentView.swift
//  sdsd
//
//  Created by Ahmad Bash on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Weigth = ""
    @State var Heigth = ""
    @State var Result = 0.0
    @State var health = ""
    var body: some View {
        
        VStack{
            Image("scale")
                .resizable()
                .scaledToFit()
            Spacer()
            TextField("weith", text: $Weigth)
            TextField("heiht", text: $Heigth)
            Button {
                Result = bmiCald(w: Double(Weigth) ?? 0, h: Double(Heigth) ?? 0)
                
                if Result <= 20{
                    health = "ضعيف"
                }else if Result <= 25 {
                    health = "جيد"
                }else {
                    health = "متين"
                }
            }
        label: {
            Text("أحسب")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(.black)
        }
            Text("bmi \(Result)")
            Text(" حالة \(health)")
        }
    }
 
    func bmiCald(w: Double, h: Double) -> Double {
        return w/(h*h)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
