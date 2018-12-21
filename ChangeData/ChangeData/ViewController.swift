//
//  ViewController.swift
//  ChangeData
//
//  Created by Sonnv on 12/21/18.
//  Copyright © 2018 Sonnv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ViewController2Delegate {
    
    func showData(data: String) {
        text1.text = data
    }
    

    @IBOutlet weak var text1: UITextField!
    
    
    @IBAction func next(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let Scre2 = sb.instantiateViewController(withIdentifier: "Tab2") as! Tab2ViewController
        Scre2.hienthi = text1.text
        Scre2.delegate = self
        self.navigationController?.pushViewController(Scre2, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

