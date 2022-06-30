//
//  ViewController.swift
//  Bachelor_TLS
//
//  Created by Kadri Aygün on 13.04.22.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var Servername: UITextField! //Einbinden des Textfeldes Servername
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TLS_Connection2(server: "string") //run client to Default-Server
        
    }

    @IBAction func IfPressed(_ sender: UIButton) {
        //What to do when button is pressed
        
        let userInput = Servername.text
        
    
        
        //just start when Button is pressed
        // not usable 
        TLS_Connection2(server: userInput!)

        
        
    }
    

            
    
    
}

