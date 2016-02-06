//
//  FirstViewController.swift
//  Pizza
//
//  Created by Arancha Conesa on 03/02/16.
//  Copyright © 2016 Arancha Conesa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var tamano: UIPickerView!
    
    @IBOutlet weak var Resultado: UILabel!
    let arrayTamano = ["Grande","Mediana","Pequeña"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamano.dataSource=self
        tamano.delegate=self
        
        Resultado.text=""
        
        // Do any additional setup after loading the view, typically from a nib.
    }

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
        return arrayTamano[row]
    }
    
    // returns the # of rows in each component..
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arrayTamano.count;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        Resultado.text=arrayTamano[row]
    }


}

