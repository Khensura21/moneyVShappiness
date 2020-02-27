//
//  Avatar.swift
//  GameKit
//
//  Created by Nien Lam on 2/20/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct Avatar: View {
    var position: CGPoint
    
    var body: some View {
        ZStack {
//            Path { path in
//                path.move(to: CGPoint(x: 25, y: 0))
//                path.addLine(to: CGPoint(x: 50, y: 50))
//                path.addLine(to: CGPoint(x: 0, y: 50))
//            }
//            .fill(Color.green)
//
//            Circle()
//                .fill(Color.black)
//                .frame(width: 10.0, height: 10.0)
            Text("🤲🏾")
                .font(.system(size: 80))
        }
        .frame(width: 80, height: 80)
        .position(position)
        .animation(.easeInOut(duration: 0.2))
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            Avatar(position: CGPoint(x: geometry.size.width / 2, y:  geometry.size.height / 2))
        }
    }
}
