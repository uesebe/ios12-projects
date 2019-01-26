//
//  ViewController.swift
//  01-IAmRich
//
//  Created by Cristian Torres on 1/25/19.
//  Copyright © 2019 Cristian Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Propertys
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var imageViewDiamond: UIImageView!
    
    @IBOutlet weak var buttonPush: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    Methods
    
    @IBAction func buttonPressed(_ sender: UIButton) {
//        self.labelTitle.text = "He pulsado el botón"
//        self.labelTitle.textColor = UIColor.green
//        self.labelTitle.font = UIFont.systemFont(ofSize: 24.0)
        self.imageViewDiamond.image = UIImage(named: "diamond")
        
//        let controller = UIAlertController(title:   "I am Rich", message: """
//                                                    I am Richch,
//                                                    I deserve it,
//                                                    I am good, healthy an succesfull
//                                            """, preferredStyle: .actionSheet)
//
//        let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
//        controller.addAction(action)
//
//        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: nil)
//        controller.addAction(action2)
//
//        let action3 = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
//        controller.addAction(action3)
//
//        self.show(controller, sender: nil)
        
        let controller = UIAlertController(title:   "I am Rich", message: """
                                                    I am Richch,
                                                    I deserve it,
                                                    I am good, healthy an succesfull
                                            """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el botón aceptar.")
        }
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: {(action) in
            print("He pulsado el botón Borrar.")
        })
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("He pulsado el botón cancelar.")
        }
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
    }
    
}

