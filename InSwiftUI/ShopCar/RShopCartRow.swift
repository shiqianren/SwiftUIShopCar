//
//  RShopCartRow.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/14.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI


struct RShopCartRow: View {
    
@ObservedObject var shopModel: RShopCartmodel
    var onIconSelect:(RShopCartmodel) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 10){
            
                Button(action: {
                    self.shopModel.checked = !self.shopModel.checked
                    self.onIconSelect(self.shopModel);
                    
                }){
                    self.shopModel.checked ?
                        Image(uiImage: UIImage(named: "xz")!).renderingMode(.original):Image(uiImage: UIImage(named: "wxz")!).renderingMode(.original)
                }
                Text("B&O官方旗舰店").font(Font.system(size: 15)
                ).fontWeight(Font.Weight.medium)
            }.padding(EdgeInsets.init(top: 10, leading: 20, bottom: 0, trailing: 0))

            HStack {
                HStack{
                    Button(action: {
                        self.shopModel.checked.toggle()
                    }){
                        self.shopModel.checked ?
                            Image(uiImage: UIImage(named: "xz")!).renderingMode(.original):Image(uiImage: UIImage(named: "wxz")!).renderingMode(.original)
                    }.background(Color.clear)
                    
                    Image(uiImage: UIImage(named: "turtlerock")!).resizable().frame(width: 100, height: 100, alignment: .center).cornerRadius(10)
                    
                }.padding(EdgeInsets.init(top: 0, leading: 20, bottom: 0, trailing: 0))
                
                VStack(alignment: .leading,spacing: 6){
                    Text("R&O Beoplay E8 2.0二代嵌入式耳机").font(Font.system(size: 13)).lineLimit(2)
                    
                    Text("规格:500g;年限:2020").font(Font.system(size: 13)).foregroundColor(.gray)
                
                        Button(action: {
                            }){
                           Text("网超").font(Font.system(size: 13)
                           ).foregroundColor(Color.init(red: 147/255, green: 147/255, blue: 147/255))
                            .padding(EdgeInsets.init(top: 0, leading: 3, bottom: 0, trailing: 3))
                            .background(Color.init(red: 246/255, green: 246/255, blue: 246/255)).cornerRadius(5)
                    }
                    HStack{
                        Text("¥222200.00").font(Font.system(size: 12)).foregroundColor(Color.init(red: 255/255.0, green: 79/255.0, blue: 79/255.0))
                        Spacer()
                        RSCountStep().padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 10))
                    }
                }
            }
            VStack{
                if (self.shopModel.service == true){
                      RSServiceView()
                }
            }
        }.background(Color.white).cornerRadius(10)
        
    }
}

struct RShopCartRow_Previews: PreviewProvider {
    static var previews: some View {
       
        RShopCartRow(shopModel: RShopCartmodel(shopName: "", theme: UserColorArray[0],service: true), onIconSelect:{ item in
            
        })
    }
}
