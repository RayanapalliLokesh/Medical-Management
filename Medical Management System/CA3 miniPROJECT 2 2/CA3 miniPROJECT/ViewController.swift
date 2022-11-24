//
//  ViewController.swift
//  CA3 miniPROJECT
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var name = "User"
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    @IBAction func lgnbtn(_ sender: Any) {
        if(username.text=="Mahesh" && password.text=="2000"){
            performSegue(withIdentifier: "app", sender: self)
        
        name = "mahesh"
            
            
            

        }
        else{
            
            let alert = UIAlertController(title: "** Error **", message: "Invalid Username or Password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
            self.present(alert, animated: true, completion:nil)
        }
    }
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    

    
//
    @IBAction func createbtn(_ sender: Any) {
       performSegue(withIdentifier: "create", sender: self)

   }
   
    @IBAction func forgotbtn(_ sender: Any) {
        let alert = UIAlertController(title: "** Don't Worry **", message: "Please Contact System Administrator", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion:nil)
    }
    
    
}

