//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by taeyang on 1/19/25.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing : 20)
        {
           // circle
            Text("원형")
                .font(.title)
            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.pink)
//                .stroke(Color.red, lineWidth: 20)
//                .stroke(Color.purple, style: StrokeStyle(lineWidth: 10, lineCap: .butt , dash: [30]))
                .trim(from: 0.2, to: 0.8)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width:200, height:100)
                .padding(10)
            
            // Ellipse
            
            Text("타원형")
                .font(.title)
            
            Ellipse()
                .fill(Color.green)
                .frame(width:200, height:100)
            
            // Capsule
            
            Text("캡슐형")
                .font(.title)
            
            Capsule(style: .circular)
                .stroke(Color.orange, lineWidth: 30)
                .frame(width : 200, height:100, alignment: .center)
        }
        
        VStack(spacing:20) {
            Text("직사각형")
                .font(.title)
                .padding()
            
            Rectangle()
                .fill(Color.red)
                .frame(width:100, height:200)
            
            Text("둥근 직사각형")
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width:200, height:500)
            
            
        }
   }
}

#Preview {
    ShapeBasic()
}
