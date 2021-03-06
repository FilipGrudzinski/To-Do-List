//
//  SecondViewController.swift
//  To Do List
//
//  Created by Filip on 25.05.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    

    @IBAction func addButton(_ sender: Any) {
        
        if (textField.text?.trimmingCharacters(in: .whitespaces).isEmpty)! {
            
            textField.placeholder = "Enter your item"
            textField.text = nil
            
        } else {
            
           // if textField.text != nil && textField.text != "" {
                
                let itemsObject = UserDefaults.standard.object(forKey: "items")
                
                var items: [String]
                
                if let tempItems = itemsObject as? [String] {
                    
                    items = tempItems
                    
                    items.append(textField.text!)
                    
                } else {
                    
                    items = [textField.text!]
                    
                }
                
                UserDefaults.standard.set(items, forKey: "items")
                textField.placeholder = "New todo?"
                textField.text = nil
                
           // }
            
        }
        
         /* if textField.text != nil && (textField.text?.isEmpty)!{
        
            let itemsObject = UserDefaults.standard.object(forKey: "items")
        
            var items: [String]
        
            if let tempItems = itemsObject as? [String] {
            
                items = tempItems
            
                items.append(textField.text!)
 
            } else {
            
                items = [textField.text!]
            
            }
        
            UserDefaults.standard.set(items, forKey: "items")
            textField.placeholder = "New todo?"
            textField.text = nil
          
        }*/
       
     }
    
    

    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

}

