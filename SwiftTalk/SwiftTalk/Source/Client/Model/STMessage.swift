//
//  STMessage.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import UIKit

enum MessageType: Int {
    // 纯展示类型的消息 1~100
    case text = 1   // 文本
    case image = 2  // 图片
    case file = 3   // 文件
    case audio = 4  // 语音
    case video = 5  // 视频
    case localtion = 6  // 位置
    case link = 7   // 链接
    
    // 事件并且需要展示类型消息 101~200
    case groupCreate = 101  // 创建讨论组
    case groupInvite = 102  // 邀请人加入讨论组
    case groupRename = 103  // 修改讨论组名称
    case groupQuit = 104    // 主动退出讨论组
    case groupKick = 105    // 被踢出讨论组
    case groupDestroy = 106 // 解散讨论组
    
    // 纯事件类型消息 301~400
    
}

enum MessageStatus: Int {
    case idle = 0   // 刚创建、发送成功状态
    case sending = 1    // 正在发送
    case uploading = 2  // 正在上传
    case failed = 3 // 发送失败
}


class STMessage: NSObject, STModelProtocol {
    var mid: String!
    var umid: Int64 = 0
    var type: Int = 0
    var status: MessageStatus = .idle
    var sender: String = ""
    var from: String = ""
    var localIndex: Int64 = 0
    var sendTime: Date?
    var content: Any?
    
    init(mid: String) {
        self.mid = mid
    }
}

class TextMessage: STModelProtocol {
    var text: String = ""
    var atlist: String = ""
}

class ImageMessage: STModelProtocol {
    var width: Int = 0
    var height: Int = 0
    var image: FileObject?
}

class FileMessage: STModelProtocol {
    var file: FileObject?
}

class AudioMessage: STModelProtocol {
    var file: FileObject?
    var duration: Int = 0 //unit: s
}

class VideoMessage: STModelProtocol {
    var file: FileObject?
    var duration: Int = 0 //unit: s
}

class LocaltionMessage: STModelProtocol {
    
}


