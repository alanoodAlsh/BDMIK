//
//  centerListscreen.swift
//  BDMIK
//
//  Created by Alanood Al Alsheikh on 28/04/2022.
//

import UIKit

class centerListscreen: UIViewController {
    
    var centers:[healthcenter]=[]

    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centers = createArray()
        tableview.delegate=self
        tableview.dataSource=self
    }
    
    func createArray() -> [healthcenter]{

        

        let healthcenterl = healthcenter(image: UIImage(imageLiteralResourceName: "alhabib"), title: "Dellah Hospital",bloodtype: "B+", location: "Alnakheel")
        let healthcenter2 = healthcenter(image: UIImage(imageLiteralResourceName: "Dellahospital"), title: "Kingdom Hospital",bloodtype: "A+", location: "Al Rabi")
        let healthcenter3 = healthcenter(image: UIImage(imageLiteralResourceName: "kingdom hospital"), title: "Saudi German Hospital",bloodtype: "B-", location: "Alsahafa")
        let healthcenter4 = healthcenter(image: UIImage(imageLiteralResourceName: "saudi german"), title: "Habib hospital",bloodtype: "AB+", location: "Alolaia")

        return [healthcenterl,healthcenter2,healthcenter3,healthcenter4]
    }
   

}

extension centerListscreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return centers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let center = centers[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Centercell") as! health_centerTableViewCell
        
        cell.setCenter(healthcenter: center)
        
        return cell
    }
}
