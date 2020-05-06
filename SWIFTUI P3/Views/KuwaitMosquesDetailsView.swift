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
            
                MosqueBG(mosque: mosque)
            
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
                    
                    //TEst
                    HStack{
                        Text("3:44 AM")
                        Text("الفجر")
                    }
                    HStack{
                        Text("5:09 AM")
                        Text("الشروق")
                    }
                    HStack{
                        Text("11:46 AM")
                        Text("الظهر")
                    }
                    HStack{
                        Text("3:21 pm")
                        Text("العصر")
                    }
                    HStack{
                        Text("6:22 pm")
                        Text("المغرب")
                    }
                    
                    HStack{
                        Text("7:45 pm")
                        Text("العشاء")
                    }

                    
                    
                }.foregroundColor(.white)
                
            }
        }
    }
}

struct MosqueBG: View {
    var mosque: Mosque
    var body: some View {
        VStack{
        Image(mosque.pic)
            .scaledToFit()
            .edgesIgnoringSafeArea(.all)
            .frame(height: 50)
        Spacer()
        }.background(Color.black).edgesIgnoringSafeArea(.all)
    }
}


struct KuwaitMosquesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        KuwaitMosquesDetailsView(mosque: mosques[0])
    }
}

