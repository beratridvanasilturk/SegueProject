//
//  ViewController.swift
//  segueProject
//
//  Created by Berat Rıdvan Asiltürk on 23.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var firstVCLbl: UILabel!
    
    //MARK: Variables
    var userName = ""
    
    //MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Segue gerceklesmeden hemen once yapilacak islemleri hazirlamamiza olanak saglar
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // segue identifieri kontrol etmek her zaman guvenlik saglar
        if segue.identifier == "toSecondVC" {
            // Casting ile segueyi istedigimiz VC'ya yonlendirdik
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = userName
        }
    }
    
    //MARK: Actions
    @IBAction func nextButtonTapped(_ sender: Any) {
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
}

