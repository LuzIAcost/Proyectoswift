//
//  NuevoElemento.swift
//  MUSIC 432
//
//  Created by UNAM-Apple8 on 25/01/23.
//

import UIKit

class NuevoElemento: UIViewController {

    @IBOutlet weak var txtCompositor: UITextField!
    
    @IBOutlet weak var txtPartitura: UITextField!
    
    var nuevaPartitura :PARTITURA=PARTITURA(portada: UIImage(systemName: "music.note.list")!, autor: "", compositor: "")
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  
    }
    

    @IBAction func Guardar(_ sender: Any) {
        nuevaPartitura.autor=txtPartitura.text!
        nuevaPartitura.compositor=txtCompositor.text!
        arregloPARTITURA.append(nuevaPartitura)
    }
    
}
