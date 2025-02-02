//
//  BackgroundOverlayBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 2/2/25.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack(spacing:20) {
           // 1. background
            Text("Hello World!")
                .frame(width:100, height:100)
                .background(
                    // 뒷 배경에 circle이 등장함
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.red, .blue]),
                                           startPoint: .leading,
                                           endPoint: .trailing)
                        )
                )
                .frame(width:120, height:120)
                // 순차대로 적용된다는 것을 인지해야함
                .background(
                    Circle()
                        .fill(Color.yellow)
                    )
            
            Divider()
            
            Circle()
                .fill(.pink)
                .frame(width:100, height:100)
                .overlay(
                    Text("Overlay")
                        .font(.title2)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(Color.blue)
                        .frame(width:120, height:120)
                    )
            
            Divider()
            
            Rectangle()
                .frame(width:200, height:200)
                .overlay(
                    Rectangle()
                        .fill(.cyan)
                        .frame(width:100, height:100)
                    // alignment의 경우에는 , 로 적용을 해주어야 함
                    , alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width:250, height:250)
                )
                // 요소간의 간격을 설정함
                .padding(10)
            
            Divider()
            
            // Icon 다루기
            
            Image(systemName: "heart.fill")
                .font(.system(size:40))
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.cyan, .blue]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                        )
                        .frame(width:100, height:100)
                        // 그림자를 생성할 수 있도록 함
                        .shadow(color: .blue, radius: 10, x: 0, y:10)
                        .overlay(
                            Circle()
                                .fill(.red)
                                .frame(width:35, height:35)
                                .overlay(
                                    Text("3")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                )
                                .shadow(color: .red, radius: 5, x: 0, y:5)
                            , alignment: .bottomTrailing
                        )
                )
                .padding(10)
        }
    }
}

#Preview {
    BackgroundOverlayBasic()
}
