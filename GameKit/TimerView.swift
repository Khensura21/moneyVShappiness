//
//  TimerView.swift
//  GameKit
//
//  Created by Khensu-Ra Love El on 2/25/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    @Binding var timeRemaining: Int
    
    
    
//    let timer = Timer.publish(every: 1, on:.main, in: .default).autoconnect()
    
    var body: some View {
        ZStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("\(timeRemaining)")
                .font(.system(size: 25))
                .frame(width: 50, height: 50)
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(30)

            }
        }
        
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timeRemaining: .constant(30))
    }
}
