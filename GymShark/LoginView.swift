//
//  LoginView.swift
//  GymShark
//
//  Created by Redouane Jnah on 17/6/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
           VStack {
               Image("logo")
                   .resizable()
                   .frame(width: 80, height: 40)
                   .aspectRatio(contentMode: .fit)
                   .padding(.bottom, 20)
               
               Text("WELCOME TO\n GYMSHARK TRAINING")
                   .font(.custom("Montserrat", size: 16))
                   .multilineTextAlignment(.center)
               
               Text("Home of the Conditioning Community")
                   .font(.custom("Roboto", size: 12))
                   .padding(.top, 2)
                   .multilineTextAlignment(.center)
           }
           .padding(.bottom, 40)
           
           VStack(spacing: 20) {
               VStack(alignment:.leading) {
                   Text("EMAIL")
                   TextField("", text: $email)
                       .font(.system(size: 12))
                       .fontWeight(.none)
                       .frame(height: 30)
                       .padding(5)
                       .border(.black)
                       .clipShape(RoundedRectangle(cornerRadius: 2))
               }
               
               VStack(alignment:.leading) {
                   HStack() {
                       Text("PASSWORD")
                       Spacer()
                       Text("Forgot password?")
                           .fontWeight(.medium)
                           .foregroundStyle(.gray)
                   }
   
                   SecureField("", text: $password)
                       .font(.system(size: 12))
                       .fontWeight(.none)
                       .frame(height: 30)
                       .padding(5)
                       .border(.black)
                       .clipShape(RoundedRectangle(cornerRadius: 2))
                   
                   Button("LOG IN") {
                       print("clicked")
                   }
                   .font(.custom("Montserrat", size: 14))
                   .foregroundStyle(.white)
                   .frame(maxWidth: .infinity, maxHeight: 45)
                   .background(.black)
                   .clipShape(.capsule)
                   .padding(.top, 10)
               }
           }
           .font(.custom("Roboto", size: 11))
           .fontWeight(.bold)
           
           Spacer()
       }
       .padding()
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
