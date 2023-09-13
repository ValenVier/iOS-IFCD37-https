//
//  ViewController.swift
//  https
//
//  Created by Javier Rodríguez Valentín on 01/10/2021.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet var tel: UIView!
    @IBOutlet weak var getBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tel.backgroundColor = .orange
        label.text = "Prueba Get"
        label.textAlignment = .center
        label.font = UIFont .boldSystemFont(ofSize: 23)
        getBtn.layer.cornerRadius = 12
        getBtn.backgroundColor = UIColor(red: 99/255, green: 185/255, blue: 89/255, alpha: 1)
        getBtn.tintColor = .white
        
    }

    @IBAction func getBtnAction(_ sender: Any) {
       
        NetworkingProvider.shared.getProof()
        
    }
    
}

