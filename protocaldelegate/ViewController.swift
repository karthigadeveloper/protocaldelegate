//
//  ViewController.swift
//  protocaldelegate
//
//  Created by apple on 8/18/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,secondvcdelegate {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func back(_sender:UIButton){
        self.performSegue(withIdentifier:"one", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondvc = segue.destination as? secondViewController
        secondvc!.value = self
    }
    func didselectdata(_ result: String){
        lbl.text = result
    }
}

