//
//  GYTabBarVC.swift
//  SegmentDemo
//
//  Created by alexyang on 2019/6/6.
//  Copyright © 2019 alexyang. All rights reserved.
//

import SwiftUI

struct RSTabBarVC : UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: RSTabContent, context: UIViewControllerRepresentableContext<RSTabBarVC>) {
        
    }
    
    func makeCoordinator() -> RSTabBarVC.Coordinator {
        Coordinator(self)
    }
    
    var tabItems:[TabBarItem]
    var controllers:[UIViewController]
    
    func makeUIViewController(context: Context) -> RSTabContent {
        
        var titles = [String]()
        var imgNames = [String]()
        var imgSelNames = [String]()
        
        for index in 0..<tabItems.count {
            let tabItem = tabItems[index]
            titles.append(tabItem.title)
            imgNames.append(tabItem.image)
            imgSelNames.append(tabItem.imageSelect)
        }
        
//        let midIndex = Int((tabItems.count+1)/2)
//        titles.insert("", at: midIndex)
//        imgNames.insert("tab_add", at: midIndex)
//        imgSelNames.insert("tab_add", at: midIndex)
        
        let tabBar = RSTabContent(titles: titles, imgNames: imgNames, imgSelNames: imgSelNames)
        
        var vPos:Int = 0
        for index in 0..<(controllers.count) {
            
//            if index != Int((controllers.count)/2) {
                let vc = controllers[vPos]
                tabBar.setContentVC(vc: vc, index: index)
//                vPos += 1
//            }
        }
        
        return tabBar
    }
    
    class Coordinator: NSObject {
        var parent: RSTabBarVC

        init(_ tabBarVC: RSTabBarVC) {
            self.parent = tabBarVC
        }

        private func tabBarController(_ tabBarController: RSTabContent, didSelect viewController: UIViewController) {

        }

        private func tabBarController(_ tabBarController: RSTabContent, shouldSelect viewController: UIViewController) -> Bool {
            return true
        }
    }
}
