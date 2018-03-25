//
//  HeroStats.swift
//  CardViewApiDota
//
//  Created by Anthony Ruiz on 3/24/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import Foundation

struct HeroStats: Decodable {
   let localized_name: String
   let primary_attr: String
   let attack_type: String
   let legs: Int
   let img: String
}
