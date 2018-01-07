//
//  ModeDefine.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/7.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import Foundation
import WCDBSwift

protocol STModelProtocol {
    
}

class FileObject: STModelProtocol {
    var name: String = ""
    var size: Int = 0
    var localPath: String = ""
    var remoteURL: String = ""
}
