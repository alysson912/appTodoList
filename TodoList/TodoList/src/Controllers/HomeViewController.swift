//
//  ViewController.swift
//  TodoList
//
//  Created by ALYSSON DODO on 28/11/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeImageView: UIImageView!
    
    @IBOutlet weak var forwardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tappedForward(_ sender: UIButton) {
        
         let vc : TaskScreenViewController? = UIStoryboard(name: "TaskScreen", bundle: nil).instantiateViewController(withIdentifier: "TaskScreenViewController") as? TaskScreenViewController
        
        vc?.modalPresentationStyle = .fullScreen
        self.present(vc ?? UIViewController(), animated: true)
    }
    
}

