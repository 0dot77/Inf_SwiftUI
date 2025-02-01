//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 1/19/25.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing :20){
           // Basic Color
            Text("Basic Color")
                .font(.title)
                .fontWeight(.bold)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.pink)
                .frame(width:300, height:100)
            
            // Primary Color
            // 자동으로 다크모드 지원
            
            Text("Primary Color")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.secondary)
                .frame(width:300, height:100)
            
            // UIColor
            // UIKit에서 제공하는 컬러셋
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width:300, height:100)
            
            // Custom Color
            Text("Custom Color")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width:300, height:100)
            
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)
}
