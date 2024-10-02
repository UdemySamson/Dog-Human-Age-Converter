//
//  ViewController.swift
//  DogHumanAgeConverter
//
//  Created by Alexandre Samson on 02.10.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogAgeTextFleld: UITextField!
    
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertButton.layer.cornerRadius = 15
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    
    @IBAction func convertButtonDidTap(_ sender: UIButton) {
        let dogAge = Int(dogAgeTextFleld.text!) ?? 0
        
        if dogAge <= 20 {
            humanAgeLabel.text = "Dein Hund ist \(dogAge * 7) Menschenjahre alt."
        } else {
            humanAgeLabel.text = "Bitte gebe ein realistisches Hundealter ein."
        }
    }
    
    @IBAction func refreshButtonDidTap(_ sender: UIBarButtonItem) {
        dogAgeTextFleld.text = ""
        humanAgeLabel.text = "Bitte gebe die Anzahl der Hundejahre ein"
        view.endEditing(true)
    }
}

