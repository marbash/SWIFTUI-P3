//
//  KuwaitMosquesView.swift
//  SWIFTUI P3
//
//  Created by MOHD ALARBASH on 5/6/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
// Day 3

import SwiftUI

struct KuwaitMosquesView: View {
    var body: some View {
        NavigationView{
            List(mosques){ mosque in
                NavigationLink(destination: KuwaitMosquesDetailsView(mosque: mosque))
                {
                MosqueRow(mosque: mosque)
                }
            .navigationBarTitle("مساجد الكويت")
            }.accentColor(.white)
                
               
            
            
        }
    }
}

struct KuwaitMosquesView_Previews: PreviewProvider {
    static var previews: some View {
        KuwaitMosquesView()
    }
}

struct MosqueRow: View {
    var mosque: Mosque
    var body: some View {
        HStack{
            Image(mosque.pic)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            VStack{
                Text(mosque.name)
                    .font(.title)
                    .bold()
                Text(mosque.area)
            }
        }
    }
}
