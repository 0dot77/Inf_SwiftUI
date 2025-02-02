//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 2/2/25.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        // 1. Spacer 도형
        //        HStack(spacing:0) {
        //            Spacer(minLength: 0)
        //                .frame(height:10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(.blue)
        //                .frame(width:50, height:50)
        //
        //            Spacer()
        //                .frame(height:10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width:50, height:50)
        //
        //            Spacer()
        //                .frame(height:10)
        //                .background(.green)
        //
        //            Rectangle()
        //                .fill(.yellow)
        //                .frame(width:50, height:50)
        //
        //            Spacer()
        //                .frame(height:10)
        //                .background(.purple)
        //        }
        //        .background(.yellow)
        
        // 2. 상단에 닫기 만들기
        VStack {
            HStack(spacing:0) {
                Image(systemName:"xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerBasic()
}
