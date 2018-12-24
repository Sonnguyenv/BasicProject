//
//  ViewController.swift
//  ChangeData
//
//  Created by Sonnv on 12/21/18.
//  Copyright © 2018 Sonnv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func showData(data: String) {
        text1.text = data
    }
    

    @IBOutlet weak var text1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func next(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let screen = sb.instantiateViewController(withIdentifier: "Tab2") as! Tab2ViewController
        screen.lable2 = text1.text ?? ""
        screen.delegate = self
        navigationController?.pushViewController(screen, animated: true)
        
    }
}
extension ViewController: ViewController2Delegate {
    
}

