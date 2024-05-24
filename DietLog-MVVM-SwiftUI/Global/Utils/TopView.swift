//
//  TopView.swift
//  DietLog-MVVM-SwiftUI
//
//  Created by Jooyeon Kang on 5/23/24.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        ZStack(content: {
            Color.yellow
                .ignoresSafeArea()
            VStack(content: {
                Spacer()
                
                Text("Diet Log")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 20)
            })
        })
    }
}

#Preview {
    TopView()
}
