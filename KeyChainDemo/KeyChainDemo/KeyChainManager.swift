//
//  KeyChainManager.swift
//  KeyChainDemo
//
//  Created by Neosoft on 27/06/22.
//

import Foundation
import SwiftKeychainWrapper

protocol KeyChainManagerType {
    
}

class KeyChainManager {
    
    static let shared = KeyChainManager()
    private let keychain = KeychainWrapper(serviceName: "Save")
    
    // MARK: Inserting Values in Keychain
    func setKeyChain(_ txt: String){
        print(">>>>>>>>>")
        print(txt)
        keychain.set(txt, forKey: "Password")
    }
    
    // MARK: Reading Keychain data
    func getKeyChainVal() -> String? {
        keychain.string(forKey: "Password")
    }
    
    // MARK: Deleting all Keychain data
    func deleteAllValues(){
        defer{
            print("VALUE DELETED SUCCESSFULLY")
        }
        keychain.removeAllKeys()
    }
    
    // MARK:
    func deleteSingleVal(key: String){
        defer{
            print("VALUE DELETED SUCCESSFULLY")
        }
        keychain.remove(forKey: KeychainWrapper.Key(rawValue: "\(key)"))
    }
    
}
