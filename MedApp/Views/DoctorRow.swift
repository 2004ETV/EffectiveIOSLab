//
//  DoctorRow.swift
//  MedApp
//
//  Created by Владислав Волков on 17.11.2023.
//

import SwiftUI

struct DoctorRow: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Image("NearDoctor-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Dr. Joseph Brostito")
                        .font(.custom(FontsManager.Poppins.bold, size: 16))
                        .foregroundStyle(Color("textPrimary"))
                    Text("Dental Specialist")
                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                        .foregroundStyle(Color("textSecondary"))
                }
                Spacer()
                HStack {
                    Image(systemName: "mappin")
                        .font(.body)
                        .foregroundStyle(Color("textSecondary"))
                    Text("1.2 KM")
                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                        .foregroundStyle(Color("textSecondary"))
                }
            }
            
            Divider()
                .overlay(.white.opacity(0.7))
            
            
            HStack {
                HStack {
                    Image(systemName: "clock")
                        .font(.body)
                        .foregroundStyle(.orange)
                    Text("Sunday, 12 June")
                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                        .foregroundStyle(.orange)
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "clock")
                        .font(.body)
                        .foregroundStyle(Color("AccentColor"))
                    Text("Sunday, 12 June")
                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                        .foregroundStyle(Color("AccentColor"))
                }
            }
            .padding(.top, 8)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(Color("backgroundPrimary"))
        .cornerRadius(12)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
    }
}

struct DoctorRowPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        DoctorRow()
    }
}
