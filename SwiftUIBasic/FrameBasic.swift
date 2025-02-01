//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 2/2/25.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        VStack(spacing:20) {
            // 1
           Text("Hello, World!")
                .font(.title)
                .background(.green)
                // alignment 를 설정하지 않으면 기본으로 center 설정
                .frame(width:200, height:200, alignment: .center)
                .background(.red)
            
            // 경계선을 만드는데 사용한다.
            Divider()
            
            // 2
            Text("Hello. World!")
                .font(.title)
                .background(.green)
                // .infinity를 사용해서 사용할 수 있는 최대치를 쓸 수 있도록 함
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
        }
        
    }
}

struct FrameBasicSecond : View {
    var body : some View {
        // 3
        Text("Hello, World!")
            .font(.title)
            .background(.red)
            .frame(height:100, alignment: .top)
            .background(.orange)
            .frame(width:200)
            .background(.purple)
            .frame(maxWidth:.infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight:.infinity)
            .background(.gray)
    }
}

#Preview {
    FrameBasic()
}

#Preview {
    FrameBasicSecond()
}
