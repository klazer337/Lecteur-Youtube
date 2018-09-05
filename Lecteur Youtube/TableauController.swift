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
        return UITableViewCell()
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let cool = Chanson(artiste: "Casseurs Flowters", titre: "Ils sont cools", code: "_DT-4-jJTZc")
        chansons.append(cool)
        //
        TableView.reloadData() // Recharge les données et mettre a jour le TableView
    }
    

}
