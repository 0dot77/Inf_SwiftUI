//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 2/2/25.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
        // 1. VStack
//        VStack(alignment: .leading, spacing: 10) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:200, height:200)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width:150, height:150)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width:100, height:100)
//        }
        
        // 2. HStack
        // 세로 방향으로 쌓이게 된다
//        HStack(spacing:20) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:100, height:100)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width:100, height:100)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width:100, height:100)
//        }
        
        // 3. ZStack
        // 포토샵의 레이어 개념
//        ZStack(alignment: .topLeading)
//        {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:150, height:150)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width:130, height:130)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width:100, height:100)
//        }
        
        // 4 동시에 다 사용해보기
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width:350, height:500)
//            
//            VStack(alignment: .leading, spacing:30) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width:150, height:150)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width:100, height:100)
//                
//                HStack(alignment: .bottom, spacing: 10) {
//                   Rectangle()
//                        .fill(.purple)
//                        .frame(width:50, height:50)
//                    
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width:75, height:75)
//                    
//                    Rectangle()
//                        .fill(.indigo)
//                        .frame(width:50, height:50)
//                }
//                .background(.white)
//            }
//            .background(.black)
//        }
        
        // 5. ZStack 과 Background
        VStack(spacing:50) {
            // ZStack을 사용해서 원에 1을 표현 - layer 가 복잡할 때 ZStack을 사용하면 좋음
            ZStack {
                Circle()
                    .frame(width:100, height:100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // Background를 사용해서 원의 1을 동일하게 표현 - layer가 단순할 경우 추천
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width:100, height:100)
                )
        }
    }
}

#Preview {
    StackBasic()
}
