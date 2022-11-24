//
//  ViewControllerTblView.swift
//  CA3 miniPROJECT
//
//  Created by Student on 29/10/22.
//  Copyright © 2022 student. All rights reserved.
//

//import UIKit
//
//class ViewControllerTbl: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    var Symptoms: [String] = ["Fever","Anxiety disorder","Headache","cold","Vomiting","Depression","Mental Illness"]
//    var Fever: [String] = ["Paracetamol","Acetaminophen","Tylenol"," Ibuprofen","Aspirin","Motrin","Naproxen"]
//    var Anxietydisorder: [String] = ["Alprozolam(Xanax)","Chlordiazepoxide(Librium)","Clonazopam(Klonopin)","diazopam(Volium)"]
//    var Headache: [String] = ["Acetaminophen","Aspirin","Fenoproxin","Ibuprofen"]
//    var cold: [String] = ["diphenhydramine","Pseudophedrine", "ibuprofen","naproxen","Acetaminophen","dextromethorphan"]
//    var vomiting: [String] = ["Ondansetron","Zofran","promethazine","phenergon","Zofran CDT", "Ativan","Reglan"]
//    var Depression: [String] = ["bupropion","cymbalta","Zoloft","Lexapro","Setraline","Citalopram","celaxa"]
//    var MentalIllness: [String] = ["Sertraline","Beta blockers","Dosulepin","Duloxitine","Lamotrigine"]
//    func numberOfSections(in tableview: UITableView) -> Int{
//        return Symptoms.count
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        if(section==0){
//            return Fever.count
//
//    }
//        else if(section==1){
//            return Anxietydisorder.count
//
//        }
//
//        else if(section==2){
//            return Headache.count
//
//        }
//        else if(section==3){
//            return cold.count
//
//        }
//        else if(section==4){
//            return vomiting.count
//
//        }
//        else if(section==5){
//            return Depression.count
//
//        }
//        else{
//            return MentalIllness.count
//        }
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
//        let cell = tableView.dequeueReusableCell(withIdentifier: "newCell", for: indexPath)
//        if(indexPath.section==0){
//            cell.textLabel?.text = Fever[indexPath.row]
//        }
//        else if(indexPath.section==1){
//            cell.textLabel?.text = Anxietydisorder[indexPath.row]
//        }
//        else if(indexPath.section==2){
//            cell.textLabel?.text = Headache[indexPath.row]
//        }
//
//        else if(indexPath.section==3){
//            cell.textLabel?.text = cold[indexPath.row]
//        }
//        else if(indexPath.section==4){
//            cell.textLabel?.text = vomiting[indexPath.row]
//        }
//        else if(indexPath.section==5){
//            cell.textLabel?.text = Depression[indexPath.row]
//        }
//        else{
//            cell.textLabel?.text = MentalIllness[indexPath.row]
//        }
//        return cell
//    }
//    func tableView(_tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
//        return Symptoms[section]
//    }
//    var value:String!
//    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        if(indexPath.section==0){
//            value=Fever[indexPath.row]
//        }
//        else if(indexPath.section==1){
//            value=Anxietydisorder[indexPath.row]
//        }
//        else if(indexPath.section==2){
//            value=Headache[indexPath.row]
//        }
//        else if(indexPath.section==3){
//            value=cold[indexPath.row]
//        }
//        else if(indexPath.section==4){
//            value=vomiting[indexPath.row]
//        }
//        else if(indexPath.section==5){
//            value=Depression[indexPath.row]
//        }
//        else{
//            value=MentalIllness[indexPath.row]
//        }
//        let alert = UIAlertController(title:"Medicines",message: value,preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler:nil))
//        self.present(alert, animated: true, completion:nil)
//    }
//
//
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */

import UIKit

class UserErrorController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var symptoms: [String] = ["Fever","Anxiety disorder","Headache","cold","Vomiting","Depression","Mental Illness"]
    var Fever: [String] = ["Paracetamol","Acetaminophen","Tylenol","Ibuprofen","Aspirin","Motrin","Naproxen"]
    var Anxietydisorder: [String] = ["Alprozolam(Xanax)","Chlordiazepoxide(Librium)","Clonazopam(Klonopin)","diazopam(Volium)"]
    var Headache: [String] = ["Acetaminophen","Aspirin","Fenoproxin","Ibuprofen"]
    var cold: [String] = ["diphenhydramine","Pseudophedrine", "ibuprofen","naproxen","Acetaminophen","dextromethorphan"]
    var vomiting: [String] = ["Ondansetron","Zofran","promethazine","phenergon","Zofran CDT", "Ativan","Reglan"]
    var Depression: [String] = ["bupropion","cymbalta","Zoloft","Lexapro","Setraline","Citalopram","celaxa"]
    var MentalIllness: [String] = ["Sertraline","Beta blockers","Dosulepin","Duloxitine","Lamotrigine"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return symptoms.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) ->Int {
        if(section==0)
        {
            return Fever.count
        }
        else if(section==1)
        {
            return Anxietydisorder.count
        }
        else if(section==2)
        {
            return Headache.count
        }
        else if(section==3)
        {
            return cold.count
        }
        else if(section==4)
        {
            return vomiting.count
        }
        else if(section==5)
        {
            return Depression.count
        }
        else
        {
            return MentalIllness.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuse", for: indexPath)
        
        if(indexPath.section==0){ cell.textLabel?.text = Fever [indexPath.row]
            
        }
            
        else if(indexPath.section==1){
            
            cell.textLabel?.text = Anxietydisorder [indexPath.row]
            
        }
        else if(indexPath.section==2){
            
            cell.textLabel?.text = Headache [indexPath.row]
        }
            
        else if(indexPath.section==3){
            
            cell.textLabel?.text = cold[indexPath.row]
            
        }
        else if(indexPath.section==4){
            
            cell.textLabel?.text = vomiting [indexPath.row]
            
        }
        else if(indexPath.section==5){
            
            cell.textLabel?.text = Depression [indexPath.row]
            
        }
            
            
        else{
            
            cell.textLabel?.text = MentalIllness [indexPath.row]
            
        }
        
        return cell
        
        
    }
    
    func tableView (_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return symptoms[section]
    }
    
    var value:String!
    var test="Not Selected Test"
    var cost="Nost Selected Test"
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.section==0){
            
            value=Fever[indexPath.row]
            
            if(value=="Paracetamol"){
                test=value
                cost="200"
                
            }
            else if(value=="Acetaminophen"){
                test=value
                cost="100"
            }
            else if(value=="Tylenol"){
                test=value
                cost="100"
            }
            else if(value=="Ibuprofen"){
                test=value
                cost="100"
            }
            else if(value=="Aspirin"){
                test=value
                cost="130"
            }
            else if(value=="Motrin"){
                test=value
                cost="1040"
            }
            else{
                test="Naproxen"
                cost="1530"
            }
            
        }
        else if(indexPath.section==1){
            value=Anxietydisorder [indexPath.row]
            
            if(value=="Alprozolam(Xanax)"){
                test=value
                cost="200"
                
            }
            else if(value=="Chlordiazepoxide(Librium)"){
                test=value
                cost="100"
            }
            else if(value=="Clonazopam(Klonopin)"){
                test=value
                cost="1001"
            }
                
            else{
                test="diazopam(Volium)"
                cost="1501"
            }
            
        }
        else if(indexPath.section==2){
            value=Headache[indexPath.row]
            
            if(value=="Acetaminophen"){
                test=value
                cost="210"
                
            }
            else if(value=="Aspirin"){
                test=value
                cost="120"
            }
            else if(value=="Fenoproxin"){
                test=value
                cost="130"
            }
            else{
                test="Ibuprofen"
                cost="150"
            }
            
        }
        else if(indexPath.section==3){
            value=cold[indexPath.row]
            
            if(value=="diphenhydramine"){
                test=value
                cost="200"
                
            }
            else if(value=="Pseudophedrine"){
                test=value
                cost="130"
            }
            else if(value=="ibuprofen"){
                test=value
                cost="140"
            }
            else if(value=="naproxen"){
                test=value
                cost="140"
            } else if(value=="Acetaminophen"){
                test=value
                cost="140"
            }
            else{
                test="dextromethorphan"
                cost="1500"
            }
            
        }
        else if(indexPath.section==4){
            value=vomiting[indexPath.row]
            
            if(value=="Ondansetron"){
                test=value
                cost="200"
                
            }
            else if(value=="Zofran"){
                test=value
                cost="130"
            }
            else if(value=="promethazine"){
                test=value
                cost="140"
            }
            else if(value=="phenergon"){
                test=value
                cost="140"
            } else if(value=="Zofran CDT"){
                test=value
                cost="140"
            }
            else if(value=="Ativan"){
                test=value
                cost="140"
            }
            else{
                test="Reglan"
                cost="150"
            }
            
        }
        else if(indexPath.section==5){
            value=Depression[indexPath.row]
            
            if(value=="bupropion"){
                test=value
                cost="200"
                
            }
            else if(value=="cymbalta"){
                test=value
                cost="130"
            }
            else if(value=="Zoloft"){
                test=value
                cost="140"
            }
            else if(value=="Lexapro"){
                test=value
                cost="140"
            }
            else if(value=="Setraline"){
                test=value
                cost="140"
            }
                
            else if(value=="Citalopram"){
                test=value
                cost="140"
            }
                
            else{
                test="celaxa"
                cost="150"
            }
            
        }
            
        else{
            
            value=MentalIllness[indexPath.row]
            if(value=="Sertraline"){
                test=value
                cost="200"
                
            }
            else if(value=="Beta blockers"){
                test=value
                cost="140"
            }
            else if(value=="Dosulepin"){
                test=value
                cost="200"
            }
            else if(value=="Duloxitine"){
                test=value
                cost="100"
            }
                
            else{
                test="Lamotrigine"
                cost="150"
            }
        }
        
        
        
        let alert = UIAlertController(title: "Selected", message: value, preferredStyle: .alert)
        
        let a={
            (action:UIAlertAction)->Void in
            
            self.performSegue(withIdentifier: "print", sender: self)
            
        }
        
        alert.addAction(UIAlertAction(title: "Next", style: .default, handler: a))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //override func prepare(for segue: UIStoryboardSegue, sender:Any?){
    //let newVC: ViewControllerlast = segue.destination as! ViewControllerlast
    
    //newVC.ltest=test
    //newVC.lcost=cost
    
    
    
    
    // Do any additional setup after loading the view.
}




