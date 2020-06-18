//
//  RShopCartmodel.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/14.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import Foundation
import SwiftUI


public let UserColorArray = [
  Color(red:75 / 255, green:166 / 255, blue: 239 / 255),
  Color(red:161 / 255, green:206 / 255, blue: 97 / 255),
  Color(red:248 / 255, green:214 / 255, blue: 80 / 255),
  Color(red:243 / 255, green:176 / 255, blue: 74 / 255),
  Color(red:238 / 255, green:140 / 255, blue: 111 / 255),
  Color(red:237 / 255, green:113 / 255, blue: 165 / 255),
  Color(red:207 / 255, green:102 / 255, blue: 247 / 255),
  Color(red:77 / 255, green:110 / 255, blue: 247 / 255),
  Color(red:236 / 255, green:107 / 255, blue: 102 / 255)
]
var generatteID = _generateID()

// 一个函数，返回了一个闭包，用来持有 id，做到自增长 id
func _generateID() -> () -> Int {
    var id = 0
    
    return {
        id += 1
        return id
    }
}

class RShopCartmodel:Identifiable,ObservableObject {
    var uuid:Int = 0
    var shopName: String = ""
    var theme:Color = UserColorArray[0]
    var service:Bool = false;
    @Published var checked:Bool = true
    
    init(shopName:String,theme:Color,service:Bool) {
        self.shopName = shopName;
        self.theme = theme;
        self.uuid = generatteID()
        self.service = service;
    }
}
