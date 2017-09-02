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
    
    var wzrost:Float!
    var waga:Float!
    var wzrosta:Float!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // po kliknięciu w pole text pojawia się klawiatura którą zdefiniowałem poniżej
        textWzrost.keyboardType = UIKeyboardType.numbersAndPunctuation
        textWaga.keyboardType = UIKeyboardType.numbersAndPunctuation
        //textWzrost.keyboardType = UIKeyboardType.numberPad
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func BtnAkcja(_ sender: UIButton, forEvent event: UIEvent) {
        
        // Definiowanie przycisku alertu
        let title = "BŁĄD!" // Tytuł okna
        let message = "Uzupełnij prawidłowo wszystkie pola"  // Wiadomość jaka się wyświetli
        let textOK = "OK" // Przycisk OK
        
        // Zdefiniowanie przycisku i ( co on zawiera )
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        // zdefiniowanie przycisku OK
        let okButton = UIAlertAction(title: textOK, style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(okButton)
        
        
        let wzrost = Float(textWzrost.text!) // / 100
        let waga = Float(textWaga.text!)
        
        if wzrost != nil && waga != nil {    // <- warunek aby nie wyświetlało sie nil gdy pole text jest puste
     
        let wynik = waga! / (wzrost! * wzrost!) // (wzrost! * wzrost!) / waga!
        //let wzrosta = Float(textWzrost.text!)! / 100
        labelWynik.text = String(format: "%.2f", wynik) // skraca liczby po przecinku -- Int(format: "%.2f", wynik)
        
        
        }else{
            // wywołanie okienka alert
            present(alert, animated: true, completion: nil)
            //self.labelWynik.text = "Uzupełnij"
        }

    }
    
    @IBAction func btnClean(_ sender: Any) {
        textWzrost.text = ""
        textWaga.text = ""
        labelWynik.text = ""
    }
    
    
    // chowanie klawiatury kliknięcie w tło
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   
    
}



