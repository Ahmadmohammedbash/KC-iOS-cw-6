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
            HStack{
                Text("أستغفر الله العظيم").font(.title)
                Spacer()
                Text("\(counter[0])")
                    .font(.largeTitle)
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .clipShape(Circle())
                    .padding()
                    .onTapGesture {
                        counter[0] = counter[0] + 1
                    }
            }.padding()
            ExtractedView()
            HStack{
                Text("سبحان الله وبحمده").font(.title)
                Spacer()
                Text("\(counter[2])")
                    .font(.largeTitle)
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .clipShape(Circle())
                    .padding()
                    .onTapGesture {
                        counter[2] = counter[2] + 1
                    }
            }.padding()
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
    var body: some View {
        HStack{
            Spacer()
            Text("الحمدلله").font(.title)
            Spacer()
            Text("\(counter[1])")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    counter[1] = counter[1] + 1
                }
        }.padding()
    }
}
