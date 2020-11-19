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
        
    }

    //funciones aplicacion
    //funciones de inicio
    func genera_cartas(num_cart: Int, cantidad: Int){
        //introducir num carta y cuantas de ese numero
    }
    
    //funciones de juego

}

