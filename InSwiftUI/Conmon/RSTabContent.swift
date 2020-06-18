//
//  UIView.swift
//  InSwiftUI
//
//  Created by 任时迁 on 2020/6/17.
//  Copyright © 2020 shiqianren. All rights reserved.
//
import UIKit

class RSTabContent: UIViewController {

    var tabBar:AZTabBarController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    convenience init(titles:[String], imgNames:[String], imgSelNames:[String]) {
        self.init()
        
        tabBar = AZTabBarController.insert(into: self, withTabIconNames: imgNames, andSelectedIconNames: imgSelNames)
        tabBar?.buttonsBackgroundColor = UIColor.white
        tabBar?.font = UIFont.systemFont(ofSize: 11)
        tabBar?.ignoreIconColors = false
        tabBar?.selectionIndicatorHeight = 0
        tabBar?.selectedColor = .black
        tabBar?.defaultColor = .black
        
        for index in 0..<titles.count {
//            if index != 2 {
                tabBar!.setTitle(titles[index], atIndex: index)
//            }
        }
        
//        tabBar?.setAction(atIndex: 2) {
//            let imgPicker = UIImagePickerController()
//            self.present(imgPicker, animated: true, completion: nil)
//        }
    }
    
    func setContentVC(vc:UIViewController, index:Int) {
        
        tabBar?.setViewController(vc, atIndex: index)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //self.navigationController?.isNavigationBarHidden = false
    }

}

