//
//  FallingObjects.swift
//  GameKit
//
//  Created by Khensu-Ra Love El on 2/25/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI
import UIKit

struct FallingObjects: View {
//    var avatarPosition: CGPoint
//    let siz: CGFloat = 80
    @State var moneyPosition : CGFloat = 150;
    @State var moneyPosTwo : CGFloat = 110;
    @State var moneyPosThree : CGFloat = 100;
    @State var moneyPosFour: CGFloat = 125
    @Binding var avatarPosition: CGPoint
    @Binding var checkIfLoss:Bool
    @Binding var timerIsRunning:Bool
  
    
    let timer = Timer.publish(every: 0.3, on: .main, in:.default).autoconnect()
    
    // Logic to check if avatar is inside the collision object.
    //position of y coordinate of money bag
    //position of y coordinate of hands : geometry.size.height - 150
    
    func avatarTouchMoney() -> Bool {
        if (moneyPosition>=650 && (self.avatarPosition.x>=140 && self.avatarPosition.x<=200) ) {
            self.timerIsRunning = false
            return true
        }
        else if (moneyPosTwo>=600 && (self.avatarPosition.x>=70 && self.avatarPosition.x<=130) ) {
            self.timerIsRunning = false
            return true
        }
        else if (moneyPosThree>=600 && (self.avatarPosition.x>=220 && self.avatarPosition.x<=280) ) {
             self.timerIsRunning = false
            return true
        }
        else if (moneyPosFour>=600 && (self.avatarPosition.x>=320 && self.avatarPosition.x<=380) ) {
             self.timerIsRunning = false
            return true
        }
        return false
    }
    


    var body: some View {
        ZStack {
            ZStack {
                Text("💰")
                    .font(.system(size: 60))
                    .position(x: 170.0, y : moneyPosition)
                    .opacity(self.avatarTouchMoney() ? 0 : 1)
                Text("💵")
                    .font(.system(size: 60))
                    .position(x: 100.0, y : moneyPosTwo)
                Text("💸")
                    .font(.system(size: 60))
                    .position(x: 250.0, y : moneyPosThree)
                Text("💳")
                    .font(.system(size: 60))
                    .position(x: 350.0, y : moneyPosFour)
                
                Text("YOU LOSE!")
                    .font(.system(size: 50))
                    .opacity(self.checkIfLoss ? 1.0 : 0.0)
                    .foregroundColor(.red)

                
            }.onReceive(self.timer) { _ in
                if  self.timerIsRunning {
                    self.moneyPosition += 60
                    self.moneyPosFour += 50
                    self.moneyPosTwo += 45
                    self.moneyPosThree += 70
                    
                }
                
                if self.moneyPosition > 900 {
                    self.moneyPosition = 100
                }
                if self.moneyPosTwo > 900 {
                    self.moneyPosTwo = 100
                }
                
                if self.moneyPosThree > 900 {
                    self.moneyPosThree = 100
                }
                if self.moneyPosFour > 900 {
                    self.moneyPosFour = 100
                }
                self.checkIfLoss=self.avatarTouchMoney()
                print(self.checkIfLoss)
            }
        }
    }
}

struct FallingObjects_Previews: PreviewProvider {
    static var previews: some View {
        FallingObjects(avatarPosition:.constant(CGPoint(x: 10, y: 0)),checkIfLoss:.constant(false),timerIsRunning: .constant(false) )
    }
}
