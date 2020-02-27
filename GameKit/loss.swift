//
//  loss.swift
//  GameKit
//
//  Created by Siyuan Zan on 2/26/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

//
//  FallingObjects.swift
//  GameKit
//
//  Created by Khensu-Ra Love El on 2/25/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI
import UIKit

struct loss: View {
    //    var avatarPosition: CGPoint
    //    let siz: CGFloat = 80
    //    @State var laughPos : CGFloat = 100;
    //    @State var moneyPosition : CGFloat = 150;
    //    @State var moneyPosTwo : CGFloat = 110;
    //    @State var famPos: CGFloat = 125
    //    @Binding var avatarPosition: CGPoint
    @Binding var checkIfLoss:Bool
    
    
   
    
    
    var body: some View {
        ZStack{
             Text("")
           
           
            
        }
    }
}

struct loss_Previews: PreviewProvider {
    
    static var previews: some View {
        loss(checkIfLoss:.constant(false))
    }
}

