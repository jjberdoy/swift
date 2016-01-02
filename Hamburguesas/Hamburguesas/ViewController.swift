//
//  ViewController.swift
//  Hamburguesas
//


import UIKit

class ViewController: UIViewController {
    
    var paises = ColeccionDePaises()
    var hamburguesas = ColeccionDeHamburguesa()
    
    
    
    @IBOutlet weak var LB_PAISES: UILabel!
    
    
    @IBOutlet weak var LB_HAMBURGUESA: UILabel!
    
    
    @IBAction func PB_QUIERO() {
        LB_PAISES.text = paises.obtenPais()
        LB_HAMBURGUESA.text = hamburguesas.obtenHambuguesa()
        
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

