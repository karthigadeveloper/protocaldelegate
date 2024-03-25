//
//  secondViewController.swift
//  protocaldelegate
//
//  Created by apple on 8/18/23.
//

import UIKit
protocol secondvcdelegate:AnyObject{
    
    func didselectdata(_ result:String)
}

class secondViewController: UIViewController {

    @IBOutlet weak var field: UITextField!
    
    @IBOutlet weak var btn: UIButton!
    
    var value: secondvcdelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
@IBAction func backbtn(_ sender: UIButton) {
        value?.didselectdata(field.text!)
        self.dismiss(animated: true, completion: nil)
    }
}
