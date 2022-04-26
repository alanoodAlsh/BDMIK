//
//  ContentView.swift
//  BDMIK
//
//  Created by Alanood Al Alsheikh on 06/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username=""
    @State private var password=""
    @State private var wrongUsername=0
    @State private var wrongPassword=0
    @State private var showingLoginScreen=false
    var body: some View {
        HStack {
            NavigationView{
                ZStack{
                    Color("logoRed")
                        .opacity(0.90)
                    .ignoresSafeArea()
                    Circle().scale(1.9).foregroundColor(.white.opacity(0.15))
                    Circle().scale(1.5).foregroundColor(.white)
                    
                    
                    
                    
                    VStack{
                        
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200, alignment: .center)
                            .clipped()
                        
                        
                        Text("Login")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        
                        
                        TextField("Username",text: $username)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongUsername))
                        
                        SecureField("Password",text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongPassword))
                        HStack{
                        Button("Create account") {
                            //authentication
                        }
                        .foregroundColor(.white.opacity(0.90))
                        .frame(width: 150, height: 50)
                        .background(Color("logoRed"))
                        .cornerRadius(10)
                            
                         Button("Login") {
                             authenticateUser(username: username, password: password )
                            }
                            .foregroundColor(.white.opacity(0.90))
                            .frame(width: 150, height: 50)
                            .background(Color("logoRed"))
                            .cornerRadius(10)
                            
                            NavigationLink(destination: Text("you are logged in!"), isActive: $showingLoginScreen){
                                EmptyView()
                            }
                        }
                        
                    }
                }
                
            }
            .navigationBarHidden(true)
            
        }
        
    }
    
    func authenticateUser(username: String, password: String){
        if username.lowercased()=="anood"{
            wrongUsername=0
            if password.lowercased()=="1234"{
                wrongPassword=0
                showingLoginScreen=true
            }
            else{
                wrongPassword=2
            }//end wrong pass
        }
        else{
            wrongUsername=2
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
 
    }
}


