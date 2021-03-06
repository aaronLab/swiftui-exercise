//
//  ContentView.swift
//  NavbarBugTest
//
//  Created by Aaron Lee on 2021/01/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                
                NavigationLink("Child", destination: Child())
                    .isDetailLink(false)
                
                Text("Parent")
                    .navigationBarTitle("Parent", displayMode: .inline)
            }
        }
    }
}

struct Child: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        
        Text("Child")
            .navigationBarTitle("Child")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Back..")
            }))
        
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
