//
//  ViewController.swift
//  KeyChainDemo
//
//  Created by Neosoft on 27/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnDELETE: UIButton!
    @IBOutlet weak var btnSAVE: UIButton!
    @IBOutlet weak var txtToSave: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func saveTapped(_ sender: Any) {
        KeyChainManager.shared.setKeyChain(txtToSave.text ?? ".")
    }
    
    @IBAction func deleteTapped(_ sender: Any) {
        KeyChainManager.shared.deleteSingleVal(key: "Password")
       // KeyChainManager.shared.deleteAllValues()
    }
    
    @IBAction func readTapped(_ sender: Any) {
        print(".................")
        print(KeyChainManager.shared.getKeyChainVal() ?? "VALUE NOT SET")
    }
}

