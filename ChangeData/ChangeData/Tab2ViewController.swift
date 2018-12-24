//
//  Tab2ViewController.swift
//  ChangeData
//
//  Created by Sonnv on 12/21/18.
//  Copyright © 2018 Sonnv. All rights reserved.
//

import UIKit

protocol ViewController2Delegate: class {
    func showData(data: String)
    
    
}
class Tab2ViewController: UIViewController {
    

    @IBOutlet weak var text2: UITextField!
    
    var lable2: String = ""
    weak var delegate: ViewController2Delegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text2.text = lable2
    }
    
    @IBAction func Pre(_ sender: Any) {
        delegate?.showData(data: text2.text ?? "")
        navigationController?.popViewController(animated: true)
    }
   
}




