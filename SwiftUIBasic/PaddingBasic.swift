//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 2/2/25.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // 1. Padding 기본
            Text("Hello World!")
                .background(.yellow)
                // 상하좌우아래에 기본적인 패딩이 들어감
                .padding(.all, 15) // .padding(.all, 15)
                .padding(.leading, 20) // CSS 기준으로 padding
                .background(.blue)
                // background가 어디에 있느냐에 따라 달라짐, CSS 기준으로 margin
                .padding(.bottom, 20)
            
            Divider()
            
            // 2. Padding 응용
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다.")
            
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color : .black.opacity(0.3),
                        radius:10,
                        x:10, y:10)
            )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
