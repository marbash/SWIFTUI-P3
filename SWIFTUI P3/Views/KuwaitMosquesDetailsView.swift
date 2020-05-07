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
    //var payer: Prayer
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
                ScrollView(.vertical) {
                    VStack{
                    
                    ForEach(prayers) { prayer in
                    HStack{
                        Text(prayer.time)
                        Spacer()
                        Text(prayer.name)
                    }.padding()
                        }
                    

                    
                   
                }.foregroundColor(.white)
                .padding()
                }
                
            }
        }
    }
}

struct MosqueBG: View {
    var mosque: Mosque
    var body: some View {
        VStack{
        Image(mosque.pic)
            .resizable()
            .scaledToFit()
            .edgesIgnoringSafeArea(.all)
            //.frame(height: 50)
        Spacer()
        }.background(Color.black).edgesIgnoringSafeArea(.all)
    }
}


struct KuwaitMosquesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        KuwaitMosquesDetailsView(mosque: mosques[0])
    }
}

