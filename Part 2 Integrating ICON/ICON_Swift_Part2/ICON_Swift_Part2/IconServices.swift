//
//  IconServices.swift
//  ICON_Swift_Tutorial
//
//  Created by Russ (thelionshire) on 6/4/20.
//  Copyright © 2020 Ubik Capital. All rights reserved.
//

import Foundation
import ICONKit
import BigInt

// ICON services required for tutorial
class IconServices{
  
  static let shared = IconServices()
  //let iconService = ICONService(provider: "https://ctz.solidwallet.io/api/v3", nid: "0x1") // mainnet
  let iconService = ICONService(provider: "https://bicon.net.solidwallet.io/api/v3", nid: "0x3") // testnet
  let myPassword = "iconpassword"  // default password for testing, TODO change to allow user to input
  var wallet: Wallet!
  var myBalance: Double!
  var myAddress: String!
  
  init() {
    do{
      // Set path for keystore and load keystore
      let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
      let url = NSURL(fileURLWithPath: path)
      let jsonData = try Data(contentsOf: url.appendingPathComponent("iconkeystore")!)
      
      // decode key using pw (not secure for part 1: TODO add custom password for part 2)
      let decoder = JSONDecoder()
      let keystore = try decoder.decode(Keystore.self, from: jsonData)
      self.wallet = try Wallet(keystore: keystore, password: myPassword)
      self.myBalance = updateBalance()
      self.myAddress = self.wallet.address
    }catch  {
      // handle errors
      self.myBalance = 0.0
      print(error.localizedDescription)
    }
  }
  
// function to get balance and update in app
  func updateBalance() -> Double {
  let result = iconService.getBalance(address: wallet.address).execute()
    
    switch result {
    case .success(let balance):
      let newBalance = balance / BigUInt(100000000000000)
      let doubleBalance = Double(newBalance)
      let thisBalance = doubleBalance/10000.0
      self.myBalance = thisBalance
      return thisBalance
  
    case .failure(let error):
      // handle errors
      print(error.localizedDescription)
      return 0.0
    }
  }
  
}
