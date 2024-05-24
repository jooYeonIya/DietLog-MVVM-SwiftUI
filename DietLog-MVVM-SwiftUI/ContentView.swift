//
//  ContentView.swift
//  DietLog-MVVM-SwiftUI
//
//  Created by Jooyeon Kang on 5/23/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State var nickname: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                TopView()
                    .frame(height: geometry.size.height / 3)
                
                Spacer() // TopView와 아래 콘텐츠 사이에 공간을 추가
                
                VStack {
                    LeftText(text: LocalizedText.hello, font: .title3)
                        .bold()
                    LeftText(text: LocalizedText.pleaseEnterNickname, font: .callout)
                    
                    HStack {
                        TextField("", text: $nickname)
                            .frame(height: 36)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.yellow, lineWidth: 1.2)
                            )
                            .padding(.leading, 24)
                            .padding(.top, 24)
                        
                        Button {
                            print($nickname)
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right")
                                .frame(width: 36, height: 36)
                                .background(Color.green)
                                .cornerRadius(18)
                                .foregroundColor(.white)
                        }
                        .padding(.trailing, 24)
                        .padding(.top, 24)
                    }
                }
                .padding(.top, 24)
                .padding(.bottom, 24)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: .gray, radius: 2)
                .padding()
                
                Spacer()
                Spacer()
                Spacer()
            }
            .padding(0)
        }
    }
}

#Preview {
    ContentView()
}
