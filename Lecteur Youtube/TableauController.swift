//
//  TableauController.swift
//  Lecteur Youtube
//
//  Created by Kevin Trebossen on 5/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {     // Rajout de UITableViewDelegate, UITableViewDataSource

    @IBOutlet weak var TableView: UITableView!
    
    var chansons = [Chanson]()
    
    let identifiantCell = "ChansonCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        ajouterChanson()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {   // Nombre de lignes nécessaires dans la tableView   // Fonction OBLIGATOIRE
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        // Quelle Cellule renvoyer et repeupler // Fonction OBLIGATOIRE
        let chanson = chansons[indexPath.row]                                                               // récupération de l'index de la chanson voulue
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell {      // Cellule réutilisable
            cell.creerCell(chanson)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 178
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let cool = Chanson(artiste: "Casseurs Flowters", titre: "Ils sont cools", code: "_DT-4-jJTZc")
        chansons.append(cool)
        //
        TableView.reloadData() // Recharge les données et mettre a jour le TableView
    }
    

}
