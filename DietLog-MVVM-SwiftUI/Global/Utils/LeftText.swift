//
//  LeftText.swift
//  DietLog-MVVM-SwiftUI
//
//  Created by Jooyeon Kang on 5/23/24.
//

import SwiftUI

struct LeftText: View {
 
    var text: String
    var font: Font

    var body: some View {
        Text(text)
            .font(font)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 24)
    }
}
