//
//  ViewController.swift
//  tarea-1-trimestre-GPM
//
//  Created by user177872 on 11/19/20.
//

import UIKit

class ViewController: UIViewController {

    //indicadores pantalla
    @IBOutlet weak var act_num_lb: UILabel!
    @IBOutlet weak var left_num_lb: UILabel!
    @IBOutlet weak var left_cards_lb: UILabel!
    @IBOutlet weak var right_num_lb: UILabel!
    @IBOutlet weak var right_cards_lb: UILabel!
    
    //botones
    @IBAction func left_num_bt(_ sender: UIButton) {
        act_num_lb.text = "left";
    }
    @IBAction func right_num_bt(_ sender: UIButton) {
        act_num_lb.text = "right";
    }
    
    //inicio app
    override func viewDidLoad() {
        super.viewDidLoad()
        var x = creabarajas().count;
        var snumbre = x as NSNumber;
        right_cards_lb.text = snumbre.stringValue;
        
    }

    //funciones aplicacion
    //funciones de inicio
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
                media = media/cartas.count;
            }
            if media < 10{
                cartas.append(num_cart);
            }
            else{
                cartas.append(-1*num_cart);
            }
        }
        
        return cartas;
    }
    
    //funciones de juego

}

