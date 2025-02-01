//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 1/21/25.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing:20)
        {
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)
            
            Divider()
            
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width:300, height:300)
                .clipShape(Rectangle())
        }
    }
}

#Preview {
    ImageBasic()
}
