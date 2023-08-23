//
//  SecondViewController.swift
//  segueProject
//
//  Created by Berat Rıdvan Asiltürk on 23.08.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var secondVCLbl: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    
    //MARK: Variables
    var name = ""
    
    //MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = name
    }
}
