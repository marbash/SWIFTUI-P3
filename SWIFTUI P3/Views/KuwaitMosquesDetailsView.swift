//
//  KuwaitMosquesDetailsView.swift
//  SWIFTUI P3
//
//  Created by MOHD ALARBASH on 5/6/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import SwiftUI

struct KuwaitMosquesDetailsView: View {
    var mosque: Mosque
    //    var Sheikh: [String] = ["mishary-rashid-alafasy","fahd-al-kandari","salah-al-hashem"]
    var body: some View {
        ZStack{
            Image(mosque.pic)
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                
            VStack{
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(sheikhs) { sheikh in
                            Image(sheikh.pic)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 130)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 6))
                        }
                    }
                    
                    
                }
                //prayerTimes Here
                VStack{
                    HStack{
                        Text("3:50")
                        Text("الفجر")
                    }
                }
                
            }
        }
    }
}


struct KuwaitMosquesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        KuwaitMosquesDetailsView(mosque: mosques[0])
    }
}
