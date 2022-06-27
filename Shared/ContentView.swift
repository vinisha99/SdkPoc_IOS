//
//  ContentView.swift
//  Shared
//
//  Created by Vinisha Nagarajan on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        
//        Button("I am a Button") {
//            print("I am clicked")
//        }
//
//        Button {
//            print("edit")
//        } label: {
//            Image(systemName: "pencil")
//        }
       
        NavigationView{
        VStack{
            

        List{
            NavigationLink(destination: GeneralInformationView(), label: {Text("General Information").bold().padding()})
            Text("Device Info")
            NavigationLink(destination: TestView(), label: {Text("TestView Here")})
            }
        }

        }.preferredColorScheme(.dark)
    }
    
    
}

struct TestView: View {
    var body: some View {
        Text("Testing NavigationLink View")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
