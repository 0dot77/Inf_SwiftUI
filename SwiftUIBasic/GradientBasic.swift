//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 1/19/25.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing:20)
        {
           // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title2)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                   startPoint: .topLeading,
                                   endPoint: .bottom)
                )
                .frame(width:300, height: 200)
            
            Text("Radial Gradient")
                .font(.title2)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300)
                )
                .frame(width:300, height:200)
            
            Text("Angluar Gradient")
                .font(.title2)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient : Gradient(colors : [Color.blue, Color.green]),
                        center:.topLeading,
                        angle: .degrees(100+45)
                )
                    )
                    .frame(width:300, height:200)
        }
    }
}

#Preview {
    GradientBasic()
}
