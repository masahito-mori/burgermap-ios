//
//  ProfileView.swift
//  BurgerMap
//
//  Created by Masahito Mori on 2024/03/03.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text("HT")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("ハンバーガー 太郎")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text("test@gmail.ocm")
                            .font(.footnote)
                            .tint(.gray)
                    }
                }
            }
            
            Section("General") {
                HStack {
                    SettingRowView(imageName: "gear", title: "バージョン", tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            
            Section("Account") {
                Button {
                    print("Sign out..")
                } label: {
                    SettingRowView(imageName: "arrow.left.circle.fill", title: "ログアウト", tintColor: .red)
                }
                
                Button {
                    print("Delete accout..")
                } label: {
                    SettingRowView(imageName: "xmark.circle.fill", title: "退会する", tintColor: .red)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}