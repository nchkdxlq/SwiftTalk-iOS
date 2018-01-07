//
//  STGroup.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import Foundation

// 区分不同类型的讨论组, 控制讨论组具备的功能
enum GroupType: Int {
    case general = 0
}

class STGroup: STModelProtocol {
    
    var groupId: String!    // UUID 36位长字符串
    var name: String = ""
    var creator: String = "" // 创建者
    var owner: String = "" // 拥有者， 可以改变
    var type: Int = 0   // 增加一个类型，用于扩展，区分不同类型的讨论组
    var createTime: Date?
    var updateTime: Date?
    var members: [String] = [] // 群成员, 保存的是群成员id列表
    var admins: [String] = []  // 管理员
}

// MARK: TalkerProtocol

extension STGroup: TalkerProtocol {
    
}
