//
//  ContentView.swift
//  UIImagePickerControllerWithUIViewControllerRepresentable
//
//  Created by ramil on 07/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(uiImage: UIImage())
                .frame(width: 200, height: 200)
                .border(Color.black, width: 1)
            
            Button(action: {
                print("Show image picker")
            }, label: {
                Text("Select Image")
                    .font(.system(size: 32))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
