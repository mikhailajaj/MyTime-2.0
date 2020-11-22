//
//  ContentView.swift
//  MyTime
//
//  Created by Mikhail on 2020-10-17.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberInfo: Bool = true
    @State private var selection: Int? = nil
    
    var body: some View {
        
        NavigationView{
            
            VStack( spacing: 5){
                HStack{
                TextField("Email",text: $email)
                }
                HStack{
                TextField("Password",text: $password)
                }
                HStack{
                    Toggle(isOn: $rememberInfo){
                        Text("Remember me").font(.footnote)
                    }
                }
                HStack(alignment: .center){
                    NavigationLink(destination: Dashboard()){
                        Text("Login")
                    }}
                Spacer()
                
                //it is not working well
                VStack{
                    HStack(alignment: .center){
                        NavigationLink(destination: SignUpView()){
                            Text("Sign Up").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            
                            //prderd backgrond color radious
                        }
                    }
                    Button(action: {
                        // TODO: API forget password
                        // TODO: new View ask for Email
                        // TODO: the new View send request to database
                        // 1- creates new request API send the email
                        // 2- when confirmed email (new View with two Text fields _password and conform password)
                        // 3- change the data in the database + core data in the device
                        // 4- redirect the user to the Dashbord :)
                        print("Account resetted")
                        self.selection = 1
                    }){
                        Text("Forget Password! Click here to reset account")
                            .foregroundColor(Color.blue)
                        }
                    }
                    
                
                Spacer()
                HStack{
                    NavigationLink(destination: MapView()){
                        Text("Map")
                      
                    }
                    
                    NavigationLink(destination: BookTimeFrameView()){
                        Text("Book An appointment")
                    }
                        //pressing the word map alows the user to surff over all the location provider demo
                }
        
            }//VStack
            .padding()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:

                                    HStack{
                                        //we can add some function when the user click the logo
                                    Image("Logo").resizable()
                    .aspectRatio(contentMode: .fit)
                                        .frame(width: 70, height: 70, alignment: .center)
                                    Text("MyTime").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

                                    }
                                                                
            )
            
        }//NavigationView
        .onAppear(){
            print("Hi there")
        }
    }//body
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
