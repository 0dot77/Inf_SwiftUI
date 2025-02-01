//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 1/21/25.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing:20)
        {
            Image(systemName: "sun.min.fill")
                .resizable()
            // renderingmode 에서 original로 하게 되면 실제 컬러에서 multi color로 변경
            // 즉 고유값 컬러로 변경 되어서 다른 컬러를 변경 하더라도 변경되지 않는다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(Color.red)
                .frame(width:300, height:300)
        }
    }
}

#Preview {
    IconBasic()
}
