//
//  ContentView.swift
//  GameKit
//
//  Created by Nien Lam on 2/20/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //one state var that updates the avatar position
    @State var avatarPosition = CGPoint(x: 10, y: 0)
    @State var timerOn = false
    @State var timeRemaining = 30
    @State var timerIsRunning = false
    @State var checkIfLoss = false
    
    let timer = Timer.publish(every: 1, on:.main, in: .default).autoconnect()
    
    
    //body var that holds main view of all Structs
    var body: some View {
        //a container view holding the game board
        //and embedded components
        
        GeometryReader { geometry in

           
            ZStack {
                TimerView(timeRemaining: self.$timeRemaining)
            }.onReceive(self.timer) { value in
                if self.timeRemaining > 0 && self.timerIsRunning {
                    self.timeRemaining = self.timeRemaining - 1
                }
            }
            .padding(.horizontal, 15)
            
        
            ZStack {
                //sub view/struct of gameboard
                //positioned in the bckground
                GameBoard(avatarPosition: self.avatarPosition)
                FallingObjects(avatarPosition:self.$avatarPosition,checkIfLoss: self.$checkIfLoss,timerIsRunning:self.$timerIsRunning)
               
                //vstack containing controller
                VStack {
                    //Hstack & Spacers used for
                    //positioning controllers
                    Spacer()
                    HStack {
                        Spacer()
                        //struct created for game controllers
                        // uses bind var to update avatar
                        ControllerButtons(avatarPosition: self.$avatarPosition)
                        Spacer()
                    }
                    .padding()
                }
                
            }
            .onAppear() {
                // Initialize position to center of the screen.
                self.timerIsRunning = true
                self.avatarPosition = CGPoint(x: geometry.size.width / 2, y: geometry.size.height - 150)
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
