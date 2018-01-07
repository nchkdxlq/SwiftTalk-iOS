//
//  User.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import UIKit

enum Gender: Int {
    case secret, male, female
}

class User: STModelProtocol {
    var account: String!
    var nickName: String = ""
    var gender: Gender = .secret
    
    var phone: String = ""
    var email: String = ""
    var avatar: String = ""
    var signature: String = ""
}
