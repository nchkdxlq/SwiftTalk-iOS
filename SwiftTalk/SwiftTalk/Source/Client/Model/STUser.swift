//
//  STUser.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import UIKit

enum Gender: Int {
    case secret, male, female
}

// 区分不同类型的用户, 可以控制放权
enum UserType: Int {
    case general = 0
}

class STUser: STModelProtocol {
    
    var indentifier: String! // UUID 36位长字符串
    var account: String = ""
    var nickName: String = ""
    var gender: Gender = .secret
    var type: Int = 0   // 增加type, 方便扩展，区分不同的用户类型, 可以控制放权
    
    var phone: String = ""
    var email: String = ""
    var avatar: String = ""
    var signature: String = ""
}

// MARK: TalkerProtocol

extension STUser: TalkerProtocol {
    
}

