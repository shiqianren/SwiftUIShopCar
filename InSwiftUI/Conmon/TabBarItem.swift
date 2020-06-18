//
//  TabBarItem.swift
//  InSwiftUI
//
//  Created by 任时迁 on 2020/6/17.
//  Copyright © 2020 shiqianren. All rights reserved.
//
import SwiftUI

struct TabBarItem: Hashable, Codable, Identifiable {
    
    var id: Int
    var title: String
    var image: String
    var imageSelect: String
}
