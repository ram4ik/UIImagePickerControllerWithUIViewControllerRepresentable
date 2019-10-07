//
//  ContentView.swift
//  UIImagePickerControllerWithUIViewControllerRepresentable
//
//  Created by ramil on 07/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingImagePicker = false
    
    var body: some View {
        VStack {
            
            Image(uiImage: UIImage())
                .frame(width: 200, height: 200)
                .border(Color.black, width: 1)
            
            Button(action: {
                self.isShowingImagePicker.toggle()
            }, label: {
                Text("Select Image")
                    .font(.system(size: 32))
            })
                .sheet(isPresented: $isShowingImagePicker) {
                    //Text("This is the image picker")
                    DummyView()
            }
        }
    }
}

struct DummyView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<DummyView>) -> UIButton {
        let button = UIButton()
        button.setTitle("Dummy", for: .normal)
        button.backgroundColor = .red
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: UIViewRepresentableContext<DummyView>) {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
