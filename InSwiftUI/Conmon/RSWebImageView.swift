//
//  RSWebImageView.swift
//  InSwiftUI
//
//  Created by 任时迁 on 2020/6/17.
//  Copyright © 2020 shiqianren. All rights reserved.
//

import SwiftUI

struct RSWebImageView: View {
    @State private var remoteImage : UIImage? = nil
    let placeholderOne = UIImage(named: "turtlerock")
    
    var body: some View {

        Image(uiImage: self.remoteImage ?? placeholderOne!).resizable()
            .onAppear(perform: fetchRemoteImage).frame(width: 80, height: 80, alignment: .center).onTapGesture {

        }
    }
    

        func fetchRemoteImage()
        {
            guard let url = URL(string: "http://alienware.hexntc.com/awshop/web/uploads/orginal/37333bcc4f952c19f7c357dbb8c7d9368a11c227df696a8fc0f6ba5f13437cab.jpg") else { return }
            URLSession.shared.dataTask(with: url){ (data, response, error) in
                if let image = UIImage(data: data!){
                    self.remoteImage = image
                }
                else{
                    print(error ?? "")
                }
            }.resume()
          }
}


struct RSWebImageView_Previews: PreviewProvider {
    static var previews: some View {
        RSWebImageView()
    }
}
