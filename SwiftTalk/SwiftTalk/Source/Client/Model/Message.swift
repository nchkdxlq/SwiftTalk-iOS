//
//  Message.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import UIKit

enum MessageType: Int {
    case text = 1
    case image = 2
    case file = 3
    case audio = 4
    case video = 5
    case localtion = 6
    case link = 7
}

enum MessageStatus: Int {
    case origin
    case sending
    case uploading
    case success
    case failed
}

class Message: NSObject, STModelProtocol {
    var mid: String!
    var umid: Int64 = 0
    var type: Int = 0
    var status: MessageStatus = .origin
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


