//
//  RSCountStep.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/14.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI

struct RSCountStep: View {
    var body: some View {
        HStack{
            Button(action: {
            }){
                Text("-").foregroundColor(Color.gray).font(Font.system(size: 20)).frame(width:20,height: 20,alignment: .center).background(Color.white).cornerRadius(10)
            }.padding(EdgeInsets.init(top: 2, leading: 2, bottom: 2, trailing: 4))
            Text("1").frame(width: 15)
            Button(action: {
                
            }){
                Text("+").foregroundColor(Color.gray).font(Font.system(size: 20)).frame(width:20,height: 20,alignment:.center).background(Color.white).cornerRadius(10)
            }.padding(EdgeInsets.init(top: 2, leading: 2, bottom: 2, trailing: 2))
        }.background(Color.init(red: 246/255.0, green: 246/255.0, blue: 246/255.0)).frame(width: 80).cornerRadius(10)
    }
}

struct RSCountStep_Previews: PreviewProvider {
    static var previews: some View {
        RSCountStep()
    }
}
