//
//  ViewController.swift
//  birtday
//
//  Created by Edris ILYAS on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var birthday: UITextField!
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var birthdaylabel: UILabel!
    
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        
        
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            namelabel.text = "Name: \(newName)"
            
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdaylabel.text = "Birthday: \(newBirthday)"
        }
        
    }


    
    
    @IBAction func save(_ sender: Any) {
        
        UserDefaults.standard.set(name.text, forKey:"name" )
        UserDefaults.standard.set(birthday.text, forKey: "birthday")
        
        
        namelabel.text = name.text
        
        birthdaylabel.text = birthday.text
        
        
    }
    
    
    
    @IBAction func deleteclick(_ sender: UIButton) {
    
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        
        let storedBirtday = UserDefaults.standard.object(forKey:"birthday")

        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            namelabel.text = "Name: "
            
        }
        
        if (storedBirtday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdaylabel.text = "Birthday: "
        }
        
        
        
        
    }
    
    // git test
    
}

