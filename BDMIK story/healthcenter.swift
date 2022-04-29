//
//  healthcenter.swift
//  BDMIK
//
//  Created by Alanood Al Alsheikh on 28/04/2022.
//

import Foundation
import UIKit

class healthcenter {
    var image : UIImage
    var title : String
    var bloodtype: String
    var location: String
    init(image:UIImage, title:String, bloodtype: String,location: String){
        self.image=image
        self.title=title
        self.bloodtype=bloodtype
        self.location=location
    }
}
