//
//  ViewController.swift
//  testapp
//
//  Created by Seweryn Kotowski on 05.03.2017.
//  Copyright © 2017 Seweryn Kotowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textWzrost: UITextField!
    @IBOutlet weak var textWaga: UITextField!
    @IBOutlet weak var labelWynik: UILabel!
    @IBOutlet weak var btnGO: UIButton!
    
    var height:Float!
    var weight:Float!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textWzrost.keyboardType = UIKeyboardType.numbersAndPunctuation
        textWaga.keyboardType = UIKeyboardType.numbersAndPunctuation
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func BtnAkcja(_ sender: UIButton, forEvent event: UIEvent) {
        
        let title = "BŁĄD!"
        let message = "Uzupełnij prawidłowo wszystkie pola"
        let textOK = "OK"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let okButton = UIAlertAction(title: textOK, style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(okButton)
        
        
        let height = Float(textWzrost.text!)
        let weight = Float(textWaga.text!)
        
        if  height != nil && weight != nil {
            _ = height! / 100
        let score = weight! / (height! * height!)
        labelWynik.text = String(format: "%.2f", score)
        
        }else{

            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnClean(_ sender: Any) {
        textWzrost.text = ""
        textWaga.text = ""
        labelWynik.text = ""
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   
    
}



