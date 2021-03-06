//
//  ConfigureCharacteristicReadWriteTimeoutViewController.swift
//  BlueCap
//
//  Created by Troy Stribling on 10/24/14.
//  Copyright (c) 2014 gnos.us. All rights reserved.
//

import UIKit

class ConfigureCharacteristicReadWriteTimeoutViewController: UIViewController {

    @IBOutlet var readWriteTimeoutTextField : UITextField!
    
    required init(coder aDecoder:NSCoder) {
        super.init(coder:aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.readWriteTimeoutTextField.text = "\(ConfigStore.getCharacteristicReadWriteTimeout())"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        if let readWriteTimeout = self.readWriteTimeoutTextField.text {
            if !readWriteTimeout.isEmpty {
                if let readWriteTimeoutInt = readWriteTimeout.toInt() {
                    ConfigStore.setCharacteristicReadWriteTimeout(readWriteTimeoutInt)
                    self.navigationController?.popToRootViewControllerAnimated(true)
                }
            }
        }
        return true
    }

}