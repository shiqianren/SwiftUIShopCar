//
//  ContentView.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/7.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RShopCartmodel(shopName: "", theme: UserColorArray[0],service: false)
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = UIColor.init(white: 0.98, alpha: 1)
        UITableView.appearance().backgroundColor = UIColor.init(white: 0.98, alpha:1)
        UITableViewCell.appearance().selectionStyle = .none
        UITableViewCell.appearance().isUserInteractionEnabled = true
    }
    var body: some View {
        
        ZStack{
            NavigationView{
                List {
                    Section(header:
                        HStack{
                            Image(uiImage: UIImage.init(named: "notify")!)
                            Text("购物车暂不支持展示:1.开启预购单 2.必须关联采购计划下单").foregroundColor(Color.init(red: 157/255.0, green: 108/255.0, blue: 71/255.0))
                        }.background(Color.init(red: 255/255.0, green: 239/255.0, blue: 227/255.0))
                   ){
                    ForEach(RSData.shared.shopCartList){model in
                        ZStack {
                            RShopCartRow(shopModel:model, onIconSelect: {
                                item in
                                self.model.checked.toggle()
                            })
                            NavigationLink(destination: RSGoodDetail()) {
                                EmptyView()
                                }.fixedSize().navigationBarHidden(true)
                        }
                        
                    }.onDelete { (IndexSet) in

                    }
                    }
  }.listStyle(GroupedListStyle()).navigationBarTitle(Text("购物车(10)"), displayMode: .inline)
            }
            RSOperateView().offset(x: 0, y: SCREENHEIGHT/2-54)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
