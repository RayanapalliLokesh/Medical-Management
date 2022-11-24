//
//  ViewController4.swift
//  CA3 miniPROJECT
//
//  Created by Student on 29/10/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    var bname=String()
    var bgender=String()
    var bage=String()
    var bcontact=String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        name.text=bname
        gender.text=bgender
        age.text=bage
        contact.text=bcontact
       

        // Do any additional setup after loading the view.
    }
    var imageSet :[UIImage] = [
        UIImage(named: "Med1")!,
        UIImage(named: "Med2")!,
        UIImage(named: "Med3")!,
        UIImage(named: "Med4")!,
        UIImage(named: "Med5")!
        ]
    
    @IBOutlet var img: UIImageView!
    
    @IBAction func Discountbtn(_ sender: Any) {
        img.animationImages = imageSet
        img.animationDuration = 5
        img.startAnimating()
    }
    
    
    @IBAction func Stopbtn(_ sender: Any) {
        img.stopAnimating()
    }
    
    @IBAction func ActionDr(_ sender: Any) {
        let Dr1={
            (action:UIAlertAction)-> Void in
            self.performSegue(withIdentifier: "d1", sender: self)
        }
        let Dr2={
            (action:UIAlertAction)-> Void in
            self.performSegue(withIdentifier: "d2", sender: self)
        }
        let Dr3={
            (action:UIAlertAction)-> Void in
            self.performSegue(withIdentifier: "d3", sender: self)
        }
        let Dr4={
            (action:UIAlertAction)-> Void in
            self.performSegue(withIdentifier: "d4", sender: self)
        }
        
        let alert = UIAlertController(title:"Doctotrs Available Now", message: "Choose Your Doctor If HE/SHE Available in the List", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Dr.Lokesh Kumar MBBS(Chardiologist)" , style: .default, handler: Dr1))
        alert.addAction(UIAlertAction(title: "Dr.Harshith Naidu MD(Orthopeadician)", style: .default, handler: Dr2))
        alert.addAction(UIAlertAction(title: "Dr.Mahima Saxena MBBS(Chardiologist)", style: .default, handler: Dr3))
        alert.addAction(UIAlertAction(title: "Dr.Balakrishna Reddy RMP", style: .default, handler: Dr4))
        alert.addAction(UIAlertAction(title: "Dr.Kanishk Kataria MD(Dentist)", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Dr.Mukesh MbbS/FRCS(Dermatologist)", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
   // @IBAction func Medbtn(_ sender: UIButton) {
        //performSegue(withIdentifier: "tblview", sender: self)
    //}@IBAction func Medbtn(_ sender: Any) {
       
    @IBAction func Medbtn(_ sender: Any) {
        performSegue(withIdentifier: "tbl", sender: self)
    }
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var gender: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var contact: UILabel!
    
    
    
    @IBOutlet weak var ans: UILabel!
    @IBAction func sw1(_ sender: UISwitch) {
        if(sender.isOn==true){
            ans.text="Yes!!"
           
        }
        else{
            ans.text="No!!"
        }
        
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
