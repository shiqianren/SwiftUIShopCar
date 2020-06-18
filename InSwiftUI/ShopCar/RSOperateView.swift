//
//  RSOperateView.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/14.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI

struct RSOperateView: View {
    var body: some View {
        HStack{
            Button(action: {
                
            }){
                Image(uiImage: UIImage(named: "xz")!).renderingMode(.original)
            }.padding(EdgeInsets.init(top: 0, leading: 20, bottom: 0, trailing: 0))
            Text("全选").foregroundColor(Color.init(red: 124/255, green: 112/255, blue: 112/255)).font(Font.system(size: 13))
            Spacer()
             Text("清空失效商品").foregroundColor(Color.init(red: 124/255, green: 112/255, blue: 112/255)).font(Font.system(size: 13))
            Button(action: {
                
            }){
                Text("删除").foregroundColor(Color.init(red: 124/255, green: 112/255, blue: 112/255)).font(Font.system(size: 13)).frame(width: 70, height: 32, alignment: .center).cornerRadius(18).overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Color.red,lineWidth: 1))
                
            }.padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 10))
        }.frame(height:49).background(Color.white)
    }
}

struct RSOperateView_Previews: PreviewProvider {
    static var previews: some View {
        RSOperateView()
    }
}
