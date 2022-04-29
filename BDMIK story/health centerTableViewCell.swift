//
//  health centerTableViewCell.swift
//  BDMIK
//
//  Created by Alanood Al Alsheikh on 28/04/2022.
//


import UIKit

class health_centerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var healthcenterimg: UIImageView!
    @IBOutlet weak var healthcentername: UILabel!
    @IBOutlet weak var centerbloodtype: UILabel!
    @IBOutlet weak var centerlocation: UILabel!
    
    func setCenter(healthcenter: healthcenter){
        healthcenterimg.image=healthcenter.image
        healthcentername.text=healthcenter.title
        centerbloodtype.text=healthcenter.bloodtype
        centerlocation.text=healthcenter.location
    }
}
