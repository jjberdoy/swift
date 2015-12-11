//: Playground - noun: a place where people can play

/*
* Programa un playground que evalúe un rango de números en base a 4 reglas de impresión.
*   - Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
*   - Si el número es par, imprime: # el número + “par!!!”
*   - Si el número es impar, imprime: # el número + “impar!!!”
*   - Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
*/

import UIKit

var listNumber = 0...100

var aTmp = 30...40


for var i = 0 ; i <= 100 ; i++ {
    
    
    if i % 5 == 0 {
        print ("# \(i) Bingo!!!")
    }
    if i % 2 == 0 {
        print ("# \(i) es par!!!")
    }
    
    if i % 2 == 1 {
        print ("# \(i) es impar!!!")
    }
    if aTmp.contains(i) {
        print ("# \(i) Viva Swift!!!")
    }
}
