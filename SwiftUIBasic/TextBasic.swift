//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 1/19/25.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing:15) {
            // Font 사이즈를 title, body, footnote 등
            Text("Hello World".uppercased())
                .font(.title)
                .bold() // .fontweight(.bold)
                .underline(true, color:Color.red)
                .italic(true)
                .strikethrough(true, color:Color.green)
            
            // 이 방법으로 하게 되면 텍스트 크기를 지정 할 수 있게 된다.
            
            Text("안녕 세계!")
                .font(.system(size:25, weight: .semibold, design: .monospaced))
            
            // multiline text alignment
            Text("멀티 라인 텍스트 정렬 입니다. multiline text alignment 입니다. multiline text alignment 입니다.")
                .multilineTextAlignment(.trailing)
                .foregroundStyle(.green)
        }
    }
}

#Preview {
    TextBasic()
}
