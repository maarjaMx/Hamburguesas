//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Mirna Arellano on 06/12/15.
//  Copyright © 2015 Mirna Arellano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mensajePais: UILabel!
    
    @IBOutlet weak var mensajeHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let colores = Colores()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quiero() {
        let paisAleatorio = paises.obtenPais()
        let hamburguesaAleatorio = hamburguesas.obtenHamburguesa()
        
        mensajePais.text = paisAleatorio;
        mensajeHamburguesa.text = hamburguesaAleatorio;
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio

       
        
    }

}

