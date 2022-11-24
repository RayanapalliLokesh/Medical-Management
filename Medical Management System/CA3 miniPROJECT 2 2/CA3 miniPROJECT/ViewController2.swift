//
//  ViewController2.swift
//  CA3 miniPROJECT
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Creationbtn(_ sender: Any) {
        performSegue(withIdentifier: "creation", sender: self)
        
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
