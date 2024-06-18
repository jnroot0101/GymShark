//
//  LoginView.swift
//  GymShark
//
//  Created by Redouane Jnah on 16/6/2024.
//

import SwiftUI
    
struct StartView: View {
    var body: some View {

        NavigationStack {
            ZStack {
                Image("img-4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .leastNormalMagnitude)
                    .ignoresSafeArea(.container)
                    
                VStack() {
                    Spacer()
                    Text("GYMSHARK")
                        .font(.custom("Bebas Neue", size: 40))
                        .frame(maxHeight: 200)
                    
                    VStack(spacing: 25) {
                        Text("TRACK YOUR PROGRESS")
                            .font(.custom("Montserrat", size: 18))
                        
                        Text("Your entire workout history is in one place. Make it easier to track your progress, hit new PBs and unlock your full potential.")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                    HStack(spacing: 50) {
                            Button("SIGN UP") {
                                //
                            }
                        
                        Text("|")
                        
//                        NavigationLink(destination: LoginView()) {
                            Button("LOG IN") {
                                print("test")
                            }
//                        }
                    }
                    .font(.custom("Montserrat", size: 16))

                }
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.opacity(0.3))
                
            }
        }
    }
}

#Preview {
    StartView()
}
