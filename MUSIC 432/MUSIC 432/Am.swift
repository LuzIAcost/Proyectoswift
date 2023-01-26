

import UIKit

struct PARTITURA{
    var portada:UIImage
    var autor:String
    var compositor:String
}

var arregloPARTITURA:[PARTITURA]=[
    PARTITURA(portada: UIImage(named: "Bob")!, autor: "Bob Esponja", compositor: "Diego"),
    PARTITURA(portada: UIImage(named: "A mi manera-Partitura")!, autor: "A mi manera", compositor: "Gilles Thibaut"),
    PARTITURA(portada: UIImage(named: "HBD- Partitura")!, autor: "Cumpleaños Feliz", compositor: "Patty Hill"),
    PARTITURA(portada: UIImage(named: "Rolling in the deep-partitura")!, autor: "Rolling in the deep", compositor: "Adele & Paul Epworth"),
    
]
class TABLAPARTITURAS: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tb1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tb1.dataSource=self
        tb1.delegate=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloPARTITURA.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tb1.dequeueReusableCell(withIdentifier: "bellakitafer", for: indexPath) as! CeldaParti
        let celdaReciclada=arregloPARTITURA[indexPath.row]
        celda.lblTex1.text=celdaReciclada.autor
        celda.lblText2.text=celdaReciclada.compositor
        celda.imgpart1.image=celdaReciclada.portada
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
        
    }
override func viewDidAppear(_ animated: Bool) {
tb1.reloadData()
}

}
