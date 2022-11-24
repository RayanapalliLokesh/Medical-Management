//
//  ViewController3.swift
//  CA3 miniPROJECT
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController3: UIViewController {
    var player:AVAudioPlayer=AVAudioPlayer()

    var lname = String()
    var lgender = String()
    var lage = String()
    var lcontact = String()
    var laddress = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audioPath = Bundle.main.path(forResource:"silence", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf:
                NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //error
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
        player.currentTime=0
        
    }
    
    
    
    
    
    
    
    @IBOutlet weak var gender: UILabel!
    
    @IBAction func sc1(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex==0){
        gender.text="Male"
        }
        else{
            gender.text="Female"
        }
    }
    
    @IBOutlet weak var age: UITextField!
    
   
    @IBAction func sl1(_ sender: UISlider) {
        age.text=String(Int(sender.value))
    }
    
   
    @IBAction func shpbtn(_ sender: Any) {
        performSegue(withIdentifier: "shopnow", sender: self)
    }
    
    
    
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var contact: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        let newVC: ViewController4 = segue.destination as! ViewController4
        
        lname=name.text!
        lgender=gender.text!
        lage=age.text!
        lcontact=contact.text!
        
        newVC.bname=lname
        newVC.bgender=lgender
        newVC.bage=lage
        newVC.bcontact=lcontact
        
    }
    
    
    
    
    
    
    
    
    
  
    /*     MARK: - Navigationc
     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */

}
