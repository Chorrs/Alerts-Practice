//
//  ViewController.swift
//  Alerts-Practice
//
//  Created by Chorrs on 21.01.24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Photo Access", message: "Do you allow to use your photos?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func showActionSheet() {
        
        enum Films: String {
            case film1 = "Spiderman"
            case film2 = "Barbie"
        }
        
        let alert = UIAlertController(title: nil, message: "Choose Film", preferredStyle: .actionSheet)
        
        let handler: (_ type: Films) -> (UIAlertAction) -> Void = { type in
            return { action in
                print(type.rawValue)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handler(.film2))
        alert.addAction(film2)
        
        present(alert, animated: true, completion: nil)
    }
    
}

