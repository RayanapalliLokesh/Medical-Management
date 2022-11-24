//
//  ViewControllerlast.swift
//  CA3 miniPROJECT
//
//  Created by Student on 04/11/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit





class ViewControllerlast: UIViewController {

    var ltest=String()
    var lcost=String()
    var no = String()
    var Tcost = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        Medname.text=ltest
        Medcost.text=lcost
        
//        no=noofsheets.text!

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var Medname: UILabel!
    
    @IBOutlet weak var Medcost: UILabel!
    
    @IBOutlet weak var noofsheets: UITextField!
    
    
    
    @IBOutlet weak var amount: UILabel!
    
    @IBAction func Totamountbtn(_ sender: UIButton) {
        
        var cost = Int()
        cost = Int(lcost)!
        
//        var number = Int()
//
//        number = Int(no) ?? 0
       let number = Int(noofsheets.text!)!
        
         Tcost = Int(cost * number)
        
        amount.text=String(Tcost)
    }
    
    @IBAction func OKbtn(_ sender: Any) {
        performSegue(withIdentifier: "ok", sender: self)
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
