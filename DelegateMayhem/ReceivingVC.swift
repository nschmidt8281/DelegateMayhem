//
//  ViewController.swift
//  DelegateMayhem
//
//  Created by Nicolas Schmidt on 10/18/17.
//  Copyright © 2017 408 Industries. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var txtReceivingTextField: UILabel!
    
    func userDidEnterData(data: String) {
        txtReceivingTextField.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
}

