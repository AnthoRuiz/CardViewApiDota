//
//  HeroViewController.swift
//  CardViewApiDota
//
//  Created by Anthony Ruiz on 3/24/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import UIKit
import SDWebImage

class HeroViewController: UIViewController {

   @IBOutlet weak var imageView: UIImageView!
   @IBOutlet weak var nameLabel: UILabel!
   @IBOutlet weak var attributeLabel: UILabel!
   @IBOutlet weak var attackLabel: UILabel!
   @IBOutlet weak var legsLabel: UILabel!
   
   var hero: HeroStats?
   
   override func viewDidLoad() {
        super.viewDidLoad()

      nameLabel.text = hero?.localized_name
      attributeLabel.text = hero?.primary_attr
      attackLabel.text = hero?.attack_type
      legsLabel.text = "\((hero?.legs)!)"
      
      let urlString = "https://api.opendota.com" + (hero?.img)!
      let url = URL(string: urlString)
      self.imageView.sd_setImage(with: url, completed: nil)
      self.imageView.round()
      
    }
}
