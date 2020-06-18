//
//  RSMainView.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/14.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI

struct RSMainView: View {
    var body: some View {
        RSTabView(views: [AnyView(ContentView()),AnyView(ContentView()),AnyView(ContentView()),AnyView(ContentView())], tabItems: RSData.shared.getTabItems()).edgesIgnoringSafeArea(.top)
    }
}

struct RSMainView_Previews: PreviewProvider {
    static var previews: some View {
        RSMainView()
    }
}
