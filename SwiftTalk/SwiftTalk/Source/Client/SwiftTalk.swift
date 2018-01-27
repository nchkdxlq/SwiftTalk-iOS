//
//  SwiftTalk.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import Foundation

public final class SwiftTalk {
    
    static let share = SwiftTalk()
    
    private init() {
        
    }
    
    public func userLogin() {
        let type = 1
        switch type {
        case MessageType.text.rawValue:
            break
        default:
            break
        }
        
    }
    
    public func userRegister() {
        
    }
    
}
