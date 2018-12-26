//
//  ViewController.swift
//  ChangeData
//
//  Created by Sonnv on 12/21/18.
//  Copyright © 2018 Sonnv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: NSNotification.Name(rawValue: "myNotification"), object: nil)
    }
    @IBAction func next(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let screen = sb.instantiateViewController(withIdentifier: "Tab2") as! Tab2ViewController
        screen.lable2 = text1.text ?? ""
//        screen.delegate = self
//        screen.onCompletion = { [weak self] (data) in
//            self?.text1.text = data
//        }
        navigationController?.pushViewController(screen, animated: true)
    }
    @objc func onNotification(notification: Notification) {
        if let messenger = notification.userInfo {
            if let msg = messenger["messenger"] as? String {
                self.text1.text = msg
            }
        }
    }
}
//extension ViewController: ViewController2Delegate {
//    func showData(data: String) {
//        text1.text = data
//    }
//}

