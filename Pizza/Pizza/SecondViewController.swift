//
//  SecondViewController.swift
//  Pizza
//
//  Created by Arancha Conesa on 03/02/16.
//  Copyright © 2016 Arancha Conesa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        ResultadoMasa.text=""
        // Do any additional setup after loading the view, typically from a nib.
    }
    //@IBOutlet weak var MasaSelector: UIPickerView!

    @IBOutlet weak var ResultadoMasa: UILabel!
    
    let arrayMasa = ["Delgada","Crujiente","Gruesa"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return arrayMasa[row]
    }
    
    // returns the # of rows in each component..
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arrayMasa.count;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        ResultadoMasa.text=arrayMasa[row]
    }



}

