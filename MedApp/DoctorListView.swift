//
//  DoctorListView.swift
//  MedApp
//
//  Created by Владислав Волков on 16.11.2023.
//

import SwiftUI

struct DoctorListView: View {
    @State private var searchBarText: String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Header
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(NSLocalizedString("user_greeting", comment: "User greeting message")),")
                                .font(.custom(FontsManager.Poppins.regular, size: 16))
                                .foregroundStyle(Color("textSecondary"))
                            Text("Hi James")
                                .font(.custom(FontsManager.Poppins.bold, size: 20))
                                .foregroundStyle(Color("textPrimary"))
                                .bold()
                        }
                        
                        Spacer()
                        
                        Image("UserAvatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 56, height: 56)
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)
                    
                    // Doctor Card
                    NavigationLink(destination: DoctorDetailView()) {
                        VStack {
                            HStack(spacing: 12) {
                                Image("DoctorImage")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .background(.white)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Dr. Imran Syahir")
                                        .font(.custom(FontsManager.Poppins.bold, size: 16))
                                        .foregroundStyle(Color("onPrimary"))
                                    Text("General Doctor")
                                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                                        .foregroundStyle(Color("onPrimary"))
                                        .opacity(0.7)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(Color("onPrimary"))
                            }
                            
                            Divider()
                                .overlay(.white.opacity(0.7))
                            
                            
                            HStack {
                                HStack {
                                    Image(systemName: "calendar")
                                        .font(.body)
                                        .foregroundStyle(.white)
                                    Text(NSLocalizedString("recording_date", comment: "Date of recording"))
                                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                                        .foregroundStyle(Color("onPrimary"))
                                }
                                
                                Spacer()
                                
                                HStack {
                                    Image(systemName: "clock")
                                        .font(.body)
                                        .foregroundStyle(.white)
                                    Text(NSLocalizedString("recording_date", comment: "Date of recording"))
                                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                                        .foregroundStyle(Color("onPrimary"))
                                }
                            }
                            .padding(.top, 8)
                        }
                        .padding(20)
                        .background(Color("AccentColor"))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal, 24)
                    
                    // Search Bar
                    HStack(spacing: 12) {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color("textSecondary"))
                        TextField("", text: $searchBarText, prompt: Text("Placeholder").foregroundColor(Color("textSecondary")))
                            .foregroundStyle(Color("textPrimary"))
                            .font(.custom(FontsManager.Poppins.regular, size: 16))
                    }
                    .padding(16)
                    .background(Color("backgroundSecondary"))
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                    .padding(.top, 20)
                    .padding(.bottom, 24)
                    
                    // Categories
                    HStack {
                        CategoryView(categoryName: NSLocalizedString("category_covid", comment: "Covid 19 category"), iconName: "Covid")
                        Spacer()
                        CategoryView(categoryName: NSLocalizedString("category_doctor", comment: "Doctor category"), iconName: "Doctor")
                        Spacer()
                        CategoryView(categoryName: NSLocalizedString("category_medicine", comment: "Medicine category"), iconName: "Medicine")
                        Spacer()
                        CategoryView(categoryName: NSLocalizedString("category_hospital", comment: "Hospital category"), iconName: "Hospital")
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)
                    
                    // Near Doctor Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text(NSLocalizedString("near_doctor", comment: "Near doctor"))
                            .font(.custom(FontsManager.Poppins.semibold, size: 16))
                        DoctorRow()
                        DoctorRow()
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 80)
                    
                    Spacer()
                }
                .navigationBarHidden(true)
            }
        }
        .background(Color("backgroundPrimary").ignoresSafeArea(.all))
    }
}

struct DoctorListViewreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        DoctorListView()
    }
}
