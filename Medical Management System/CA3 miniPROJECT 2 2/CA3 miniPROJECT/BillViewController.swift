//
//  BillViewController.swift
//  CA3 miniPROJECT
//
//  Created by Student on 05/11/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {
    var bname=String()
    var bgender=String()
    var bage=String()
    var bcontact=String()
    var baddress=String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text=bname
        gender.text=bgender
        age.text=bage
        contact.text=bcontact
        address.text=baddress
        
        
        
        
        

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var gender: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var contact: UILabel!
    
    @IBOutlet weak var address: UILabel!
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
