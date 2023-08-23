//
//  ViewController.swift
//  segueProject
//
//  Created by Berat Rıdvan Asiltürk on 23.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var firstVCLbl: UILabel!
    
    var userName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonTapped(_ sender: Any) {
        
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
        
    }
    // Segue gerceklesmeden hemen once yapilacak islemleri hazirlamamiza olanak saglar
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // segue identifieri kontrol etmek her zaman guvenlik saglar
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = userName
        }
        
    }
    
    @IBAction func goToSecondVCTapped(_ sender: Any) {
    }
}

