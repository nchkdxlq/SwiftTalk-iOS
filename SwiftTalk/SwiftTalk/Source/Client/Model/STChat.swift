//
//  STChat.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import UIKit


enum ChatStatus: String {
    case normal = ""
    case atMe = "[有人@我]"
    case atAll = "[有人@all]"
    case draft = "[草稿]"
}

enum ChatType: Int {
    case `private` = 1  // 单聊
    case group = 2  // 讨论组
    case link = 3   // 链接类型，查看详情进入一个网页
}


protocol TalkerProtocol {
    
}

class STChat: NSObject, STModelProtocol {
    
    var identifier: String!
    var title: String = ""
    var preview: String = ""
    var type: Int = 0
    var isSticked: Bool = false
    var talker: TalkerProtocol?
    
    var atMsgList: [String] = []
    var draft: String = ""
    
    var status: ChatStatus = .normal
    
    var lastSend: Int64 = 0
    var lastReceived: Int64 = 0
    
    var unReadCount: Int = 0
    var lastRead: Int64 = 0
    var oppositeRead: Int64 = 0
    
    var updateTime: Date?
    var icon: String = ""
}
