//
//  RSGoodDetail.swift
//  InSwiftUI
//
//  Created by QFMac-02 on 2020/6/15.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI
import WebKit

struct RSGoodDetail: View {
    var body: some View {
        VStack {
            WebView(request:URLRequest(url: URL(string: "http://m.test.zcygov.cn/items/175566648")!))
        }.navigationBarTitle(Text("商品详情"))
    }
}
struct WebView : UIViewRepresentable {
    
    let request : URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}


struct RSGoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        RSGoodDetail()
    }
}
