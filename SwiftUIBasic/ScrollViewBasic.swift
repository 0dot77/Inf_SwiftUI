//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 2/3/25.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        // 1. 세로 스크롤
        // showsIndicator : 스크롤바 팝업 유무 설정
//        ScrollView(.vertical, showsIndicators: true) {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height:300)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(.title)
//                        )
//                }
//            }
        
        // 2. 가로 스크롤 뷰
//        ScrollView(.horizontal, showsIndicators: true) {
//            // Stack을 신경써야 함
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width:300, height:300)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(.title)
//                        )
//                }
//            }
//        }
        
        // 3. 혼합
        // Stack View에서는 Lazy를 주로 사용함
        // 스크롤이 위 아래도 되고, 좌 우로도 가능
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ScrollViewBasic()
}
