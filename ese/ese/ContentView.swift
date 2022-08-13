//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            ExtractedView(name:"سبحانة الله وبحمده", counter: $counter[0] )
            ExtractedView(name:"الحمدالله", counter: $counter[1] )
            ExtractedView(name:"أستغفر الله", counter: $counter[2] )
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct ExtractedView: View {
    @State var name : String
    @Binding var counter : Int
    var body: some View {
        HStack{
            Text("\(name)").font(.title)
            Spacer()
            Text("\(counter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    counter = counter + 1
                }
        }.padding()
    }
}
