//
//  ContentView.swift
//  CourseApp
//
//  Created by Samuel F. Ademola on 12/3/19.
//  Copyright © 2019 Nomizo. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: 20)
            
            CardBottomView()
                .blur(radius: 20)
            
            // BLUE CARD
            CardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: 15.0))
                .rotation3DEffect(Angle(degrees: 50.0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .blendMode(.hardLight)
            
            CardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 10.0))
                .rotation3DEffect(Angle(degrees: 40.0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .blendMode(.hardLight)
            
            // BLACK MAIN CARD
            CertificateView()
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: 5.0))
                .rotation3DEffect(Angle(degrees: 30.0), axis: (x: 10.0, y: 10.0, z: 10.0))
        }
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct CardView: View {
    var body: some View {
        VStack {
            Text("Card Back")
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(radius: 20)
//        .offset(x: 0, y: -20)
    }
}

struct CertificateView: View {
    var body: some View {
        return VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                        .padding(.top)
                    Text("Certificate")
                        .foregroundColor(.white)
                }
                // LOGO IMAGE
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            // BACKGROUND IMAGE
            .padding(.horizontal)
            Spacer()
            Image("Background")
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 20)
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
            }
            Image("Illustration5")
            Spacer()
        }.padding()
    }
}

struct CardBottomView: View {
    var body: some View {
        VStack (spacing: 20.0) {
            Rectangle()
                .frame(width: 60, height: 6)
                .cornerRadius(3.0)
                .opacity(0.1)
            Text("This certificate is proof that Samuel F. Ademola has achived the UI Design course with approval from a Design instructor.")
                .lineLimit(10)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(y: 600)
    }
}
