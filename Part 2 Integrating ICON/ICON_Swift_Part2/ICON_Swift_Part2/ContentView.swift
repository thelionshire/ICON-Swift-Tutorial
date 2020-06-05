//
//  ContentView.swift
//  ICON_Swift_Tutorial
//
//  Created by Russ (thelionshire) on 6/4/20.
//  Copyright © 2020 Ubik Capital. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var myBalance = 0.0
    var myWallet = "my wallet address"
    
    var body: some View {
        VStack(alignment: .center){
            Image("iconimg")
            .offset()
            .shadow(radius: 10)
            
            Text("\n\n My Wallet Address:\n").font(.headline)
            Text("\n" + myWallet + "\n\n").font(.subheadline)
            Text("\n\n My Balance: \n\n").font(.headline)
            Text("\n" + myBalance.description + " ICX").font(.subheadline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
