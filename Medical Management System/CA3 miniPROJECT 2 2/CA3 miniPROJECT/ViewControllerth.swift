//
//  ViewControllerth.swift
//  CA3 miniPROJECT
//
//  Created by Student on 11/11/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

class ViewControllerth: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutbtn(_ sender: Any) {
        performSegue(withIdentifier: "logout", sender: self)
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
