//
//  SecondViewController.swift
//  segueProject
//
//  Created by Berat Rıdvan Asiltürk on 23.08.2023.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var secondVCLbl: UIView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = name
        
    }
}
