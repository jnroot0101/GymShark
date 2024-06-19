//
//  SignUpView.swift
//  GymShark
//
//  Created by Redouane Jnah on 18/6/2024.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isChecked: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 80, height: 40)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 20)
                
                Text("CREATE AN ACCOUNT")
                    .font(.custom("Montserrat", size: 16))
                    .multilineTextAlignment(.center)
                
                Text("Take the first step to unlocking your potential.\n If yoy've already got a Gymshark account, please log in using your existing information.")
                    .font(.custom("Roboto", size: 12))
                    .padding(.top, 2)
                    .multilineTextAlignment(.center)
            }
            .padding(.bottom, 40)
            
            VStack(spacing: 15) {
                VStack(alignment: .leading) {
                    Text("FIRST NAME")
                        .fontWeight(.bold)
                    TextField("", text: $email)
                        .font(.system(size: 12))
                        .fontWeight(.none)
                        .frame(height: 30)
                        .padding(5)
                        .border(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 2))
                }
                
                VStack(alignment: .leading) {
                    Text("LAST NAME")
                        .fontWeight(.bold)
                    TextField("", text: $email)
                        .font(.system(size: 12))
                        .fontWeight(.none)
                        .frame(height: 30)
                        .padding(5)
                        .border(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 2))
                }
                
                VStack(alignment: .leading) {
                    Text("EMAIL")
                        .fontWeight(.bold)
                    TextField("", text: $email)
                        .font(.system(size: 12))
                        .fontWeight(.none)
                        .frame(height: 30)
                        .padding(5)
                        .border(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 2))
                }
                
                VStack(alignment: .leading) {
                    Text("DATE OF BIRTH")
                        .fontWeight(.bold)
                    TextField("", text: $email)
                        .font(.system(size: 12))
                        .fontWeight(.none)
                        .frame(height: 30)
                        .padding(5)
                        .border(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 2))
                }
                
                VStack(alignment: .leading) {
                    Text("PASSWORD")
                        .fontWeight(.bold)
                    TextField("", text: $email)
                        .font(.system(size: 12))
                        .fontWeight(.none)
                        .frame(height: 30)
                        .padding(5)
                        .border(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 2))
                }
                
                HStack(alignment: .top) {
                    Image(systemName: "square")
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("By selecting this, I acknowledge I am over the age of 18 and I have read and understood The **App User Agreement** and the **Privacy Policy**.")
                        .foregroundStyle(.black)
                        .font(.system(size: 12))
                }
                
                Button("CREATE ACCOUNT") {
                    print("clicked")
                }
                .font(.custom("Montserrat", size: 14))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, minHeight: 45)
                .background(.black)
                .clipShape(.capsule)
                .padding(.top, 10)
            }
            .font(.custom("Roboto", size: 11))
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        SignUpView()
    }
}
