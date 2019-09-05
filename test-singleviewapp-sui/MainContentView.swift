//
//  MainContentView.swift
//  test-singleviewapp-sui
//
//  Created by Tommie Carter on 9/5/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct MainContentView: View {
    let musician = #imageLiteral(resourceName: "Musician")
    
    var body: some View {
        Button(action: {
            //do something
        }) {
            Image(uiImage: musician)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .transition(.moveAndScale)
        }
//        .navigationBarHidden(true)
            .onAppear(){
                _ = self.navigationBarHidden(true)
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
