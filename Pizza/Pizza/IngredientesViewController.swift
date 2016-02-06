//
//  IngredientesViewController.swift
//  Pizza
//
//  Created by Arancha Conesa on 03/02/16.
//  Copyright © 2016 Arancha Conesa. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    var jamon:String=""
    var pepperoni:String=""
    var salchicha:String=""
    var pimiento:String=""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var salida: UILabel!
    @IBAction func Queso(sender: UISwitch) {
        if (sender.on==true)
        {
            jamon="Con Jamón"
        }
        else
        {
            jamon=""
        }
        
    }
    @IBOutlet weak var ResultadoIngredientes: UILabel!
    @IBAction func Pepperoni(sender: UISwitch) {
        if (sender.on==true)
        {
            pepperoni="Con Pepperoni"
        }
        else
        {
            pepperoni=""
        }

    }
    

    @IBAction func Salchicha(sender: UISwitch) {
        if (sender.on==true)
        {
            salchicha="Con Salchicha"
        }
        else
        {
            salchicha=""
        }

    }
    @IBAction func Pimiento(sender: UISwitch) {
        if (sender.on==true)
        {
            pimiento="Con pimiento"
        }
        else
        {
            pimiento=""
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
