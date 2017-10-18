//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Nicolas Schmidt on 10/18/17.
//  Copyright © 2017 408 Industries. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    var delegate: DataSentDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var txtDataEntry: UITextField!
    
    @IBAction func btnSend_TouchUpInside(_ sender: AnyObject) {
        if delegate != nil {
            if txtDataEntry.text != nil {
                let data = txtDataEntry.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
            
        }
        
    }

}
