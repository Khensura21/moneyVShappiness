//
//  Controller.swift
//  GameKit
//
//  Created by Nien Lam on 2/20/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct ControllerButtons: View {
    @Binding var avatarPosition: CGPoint    
    var body: some View {
        HStack {
//            Button(action: {
//                self.avatarPosition.y -= 20
//            }) {
//                Text("Up")
//                    .font(.system(size: 14))
//                    .frame(width: 60, height: 44)
//                    .background(Color.black)
//                    .foregroundColor(Color.white)
//                    .cornerRadius(30)
//            }

//            Button(action: {
//                self.avatarPosition.y += 20
//            }) {
//                Text("Down")
//                    .font(.system(size: 14))
//                    .frame(width: 60, height: 44)
//                    .background(Color.black)
//                    .foregroundColor(Color.white)
//                    .cornerRadius(30)
//            }

            Button(action: {
                self.avatarPosition.x -= 30
//                self.handsPosition.x -= 40
            }) {
                Text("⬅️")
                    .font(.system(size: 60))
                    .frame(width: 60, height: 60)
                    .cornerRadius(40)
            }

            Button(action: {
                self.avatarPosition.x += 30
//                self.handsPosition.x += 40
            }) {
                Text("➡️")
                    .font(.system(size: 60))
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
            }
        }
        .padding()
    }
}

struct ControllerButtons_Previews: PreviewProvider {
    static var previews: some View {
        ControllerButtons(avatarPosition: .constant(CGPoint(x: 0, y: 0)))
    }
}
//handsPosition: .constant(CGPoint(x: 0, y: 0))
