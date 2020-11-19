//
//  ViewController.swift
//  tarea-1-trimestre-GPM
//
//  Created by user177872 on 11/19/20.
//

import UIKit

class ViewController: UIViewController {
    
    //variables de juego
    var mazoI = [Int] ();
    var mazoD = [Int] ();
    var numActual = Int();

    //indicadores pantalla
    @IBOutlet weak var act_num_lb: UILabel!
    @IBOutlet weak var left_num_lb: UILabel!
    @IBOutlet weak var left_cards_lb: UILabel!
    @IBOutlet weak var right_num_lb: UILabel!
    @IBOutlet weak var right_cards_lb: UILabel!
    
    //botones
    @IBAction func left_num_bt(_ sender: UIButton) {
        numActual += mazoI[0];
        mazoI.remove(at: 0);
        updateView();
    }
    @IBAction func right_num_bt(_ sender: UIButton) {
        numActual += mazoD[0];
        mazoD.remove(at: 0);
        updateView();
    }
    
    //inicio app
    override func viewDidLoad() {
        super.viewDidLoad()
        
        creamazos();
        numActual = 10;
        updateView();
    }

    //funciones aplicacion
    //funciones de inicio
    func creamazos(){
        var baraja = creabarajas();
        while baraja.count > 0{
            var max = baraja.count - 1;
            var rnd = Int.random(in: 0...max);
            if baraja.count % 2 == 0 {
                mazoI.append(baraja[rnd]);
            }
            else{
                mazoD.append(baraja[rnd]);
            }
            baraja.remove(at: rnd);
        }
    }
    
    func creabarajas () -> [Int]{
        var baraja = [Int] ();
        
        baraja += genera_cartas(num_cart: 9, cantidad: 4);
        baraja += genera_cartas(num_cart: 8, cantidad: 4);
        baraja += genera_cartas(num_cart: 7, cantidad: 4);
        baraja += genera_cartas(num_cart: 6, cantidad: 4);
        baraja += genera_cartas(num_cart: 5, cantidad: 6);
        baraja += genera_cartas(num_cart: 4, cantidad: 6);
        baraja += genera_cartas(num_cart: 3, cantidad: 8);
        baraja += genera_cartas(num_cart: 2, cantidad: 8);
        baraja += genera_cartas(num_cart: 1, cantidad: 8);
        
        return baraja;
    }
    
    func genera_cartas(num_cart: Int, cantidad: Int) -> [Int]{
        //introducir num carta y cuantas de ese numero
        var cartas = [Int] ();
        var x = 0;
        
        while x < cantidad{
            x = x+1;
            var media = 0;
            var y = 0;
            if(cartas.count > 0){
                while y < cartas.count{
                    media = media + cartas[y];
                    y = y+1;
                }
                //media = media/cartas.count;
            }
            if media < 0{
                cartas.append(num_cart);
            }
            else{
                cartas.append(-1*num_cart);
            }
        }
        
        return cartas;
    }
    
    //funciones de juego
    
    func updateView (){
        act_num_lb.text = numToString(num: numActual);
        if mazoI.count != 0{
            left_num_lb.text = numToString(num: mazoI[0]);
        }
        else{
            left_num_lb.text = numToString(num: 0);
        }
        left_cards_lb.text = numToString(num: mazoI.count);
        if mazoD.count != 0{
            right_num_lb.text = numToString(num: mazoD[0]);
        }
        else{
            right_num_lb.text = numToString(num: 0);
        }
        right_cards_lb.text = numToString(num: mazoD.count);
    }
    
    //otras funciones
    func numToString (num: Int) -> String{
        var sNumber = num as NSNumber;
        return sNumber.stringValue;
    }

}
/*
 @IBOutlet weak var act_num_lb: UILabel!
 @IBOutlet weak var left_num_lb: UILabel!
 @IBOutlet weak var left_cards_lb: UILabel!
 @IBOutlet weak var right_num_lb: UILabel!
 @IBOutlet weak var right_cards_lb
 */
