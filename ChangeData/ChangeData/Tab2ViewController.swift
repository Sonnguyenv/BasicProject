//
//  Tab2ViewController.swift
//  ChangeData
//
//  Created by Sonnv on 12/21/18.
//  Copyright © 2018 Sonnv. All rights reserved.
//

import UIKit

protocol ViewController2Delegate {
    func showData(data:String)
}
class Tab2ViewController: UIViewController {
    
    var delegate:ViewController2Delegate?

    @IBOutlet weak var text2: UITextField!
    var hienthi:String!
    
    
    @IBAction func Pre(_ sender: Any) {
        delegate?.showData(data: text2.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        text2.text = hienthi
    }
}




