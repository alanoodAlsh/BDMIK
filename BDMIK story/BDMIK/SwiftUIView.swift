//
//  SwiftUIView.swift
//  BDMIK
//
//  Created by Alanood Al Alsheikh on 25/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomController()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CustomController : UIViewControllerRepresentable{
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomController>) -> UIViewController {
        let storyboard = UIStoryboard(name: "loginStory", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "login")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomController>) {
        
    }
}
