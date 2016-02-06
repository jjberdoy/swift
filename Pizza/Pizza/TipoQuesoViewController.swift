//
//  TipoQuesoViewController.swift
//  Pizza
//
//  Created by Arancha Conesa on 03/02/16.
//  Copyright © 2016 Arancha Conesa. All rights reserved.
//

import UIKit

class TipoQuesoViewController: UIViewController {

    @IBOutlet weak var ResultadoQueso: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
ResultadoQueso.text=""
        // Do any additional setup after loading the view.
    }
    
    let arrayTipoQueso = ["mozarela","cheddar","parmesano","sin queso"]


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
        return arrayTipoQueso[row]
    }
    
    // returns the # of rows in each component..
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arrayTipoQueso.count;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        ResultadoQueso.text=arrayTipoQueso[row]
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
