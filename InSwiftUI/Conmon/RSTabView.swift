//
//  RSTabView.swift
//  InSwiftUI
//
//  Created by 任时迁 on 2020/6/17.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI

struct RSTabView: View {
    var tabViews:[AnyView]
     var tabItems:[TabBarItem]
     var viewControllers: [UIHostingController<AnyView>]?
    
     init(views:[AnyView], tabItems:[TabBarItem]) {

         tabViews = views
         viewControllers = [UIHostingController<AnyView>]()
         for content in tabViews {
             let vc = UIHostingController(rootView: content)
             self.viewControllers?.append(vc)
         }
         self.tabItems = tabItems
     }

     var body: some View {
         RSTabBarVC(tabItems: tabItems, controllers: viewControllers!)
     }
}

struct RSTabView_Previews: PreviewProvider {
    static var previews: some View {
        RSTabView(views: [AnyView(ContentView()),AnyView(ContentView()),AnyView(ContentView()),AnyView(ContentView())], tabItems:RSData.shared.getTabItems() )
    }
}



