//
//  ContentView.swift
//  test-singleviewapp-sui
//
//  Created by Tommie Carter on 9/5/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let alarm = #imageLiteral(resourceName: "Alarm")
    @State private var showFlippedView = false
    var body: some View {
        NavigationView {
            VStack  {
                NavigationLink(destination: MainContentView(), isActive: self.$showFlippedView) {
                    Text("")
                }

                Button(action: {
                    //toggle state to activate flip-animation
//                    withAnimation {
                        self.showFlippedView.toggle()
                        
//                    }
                }) {
                    Image(uiImage: alarm)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .navigationBarTitle(Text(""))
                .navigationBarHidden(true)
                .navigationViewStyle( StackNavigationViewStyle())
            }
        }
    }
}

extension AnyTransition {
    static var moveAndScale: AnyTransition {
        AnyTransition.move(edge: .bottom).combined(with: .scale)
    }
    // .rotation3DEffect(Angle(degrees:180), axis: (x:0, y:0, z:1))
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding()
    }
}
