//
//  ConfirmacionViewController.swift
//  Pizza
//
//  Created by Arancha Conesa on 03/02/16.
//  Copyright © 2016 Arancha Conesa. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {
    
    var resultado:String=""
    var tamano:FirstViewController?
    var masa:SecondViewController?
    var tipoQueso:TipoQuesoViewController?
    var ingredientes:IngredientesViewController?

    @IBOutlet weak var ResultadoFinal: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let barViewControllers = self.tabBarController?.viewControllers
        tamano = barViewControllers![0] as! FirstViewController
        masa = barViewControllers![1] as! SecondViewController
        tipoQueso = barViewControllers![2] as! TipoQuesoViewController
        ingredientes = barViewControllers![3] as! IngredientesViewController

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        ResultadoFinal.text = tamano!.Resultado.text! + "\n"
                            + masa!.ResultadoMasa.text! + "\n"
                            + tipoQueso!.ResultadoQueso.text! + "\n"
                            + ingredientes!.pimiento + "\n"
                            + ingredientes!.jamon + "\n"
                            + ingredientes!.pepperoni + "\n"
                            + ingredientes!.salchicha + "\n"
        
        
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
