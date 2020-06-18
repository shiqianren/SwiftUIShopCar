//
//  RSServiceView.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/14.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI

struct RSServiceView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("配件").font(_getFont(data: 12))
                Text("【标配】huawei/华为三脚架自拍杆自拍神器huawei/华为三脚架自拍杆自拍神器").font(_getFont(data: 12)).padding(EdgeInsets.init(top: 15, leading: 0, bottom: 0, trailing: 0)).foregroundColor(Color(hex: "#777777"))
                Text("¥1589.23*1").font(_getFont(data: 13))
            }
            HStack{
                Text("共4项配件").font(_getFont(data: 13)).multilineTextAlignment(.center).padding(EdgeInsets.init(top: 4, leading: 4, bottom: 4, trailing: 0)).foregroundColor(Color(hex: "#939393"))
                Image(uiImage: UIImage(named: "arrow_down")!).renderingMode(.original).padding(EdgeInsets.init(top: 4,leading: 0,bottom: 4,trailing: 4))
            }.background(Color(hex: "#F6F6F6")).cornerRadius(11)

            
        }.padding(EdgeInsets.init(top: 0, leading: 40, bottom: 10, trailing: 0))
    }
}
func _getFont(data:CGFloat) -> Font{
    return Font.system(size: data)
}


struct RSServiceView_Previews: PreviewProvider {
    static var previews: some View {
        RSServiceView()
    }
}
