//
//  STTabBarController.swift
//  SwiftTalk
//
//  Created by nchkdxlq on 2018/1/6.
//  Copyright © 2018年 luoquan. All rights reserved.
//

import UIKit

fileprivate let kViewController = "controller"
fileprivate let kTitle = "title"
fileprivate let kImage = "image"
fileprivate let kHighlightImage = "highlight_image"
fileprivate let kTitl_Attributes = "title_attributes"

class STTabBarController: UITabBarController {
    
    
    func tabBarItemsDiscriptor() -> [[String: Any]] {
        
        let chatListItem: [String: Any] = [kViewController: ChatListViewController(),
                                           kTitle: "SwiftTalk",
                                           kImage: "tabbar_mainframe",
                                           kHighlightImage: "tabbar_mainframeHL"]
        
        let contactItem: [String: Any]  = [kViewController: ContactViewController(),
                                           kTitle: "Contact",
                                           kImage: "tabbar_contacts",
                                           kHighlightImage: "tabbar_contactsHL"]
        
        let profileItem: [String: Any]  = [kViewController: ProfileViewController(),
                                           kTitle: "Me",
                                           kImage: "tabbar_me",
                                           kHighlightImage: "tabbar_meHL"]
        
        return [chatListItem, contactItem, profileItem]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemsInfo = tabBarItemsDiscriptor()
        var navArr = [STNavigationController]()
        var tabBarItems = [UITabBarItem]()
        
        itemsInfo.forEach { info in
            let vc = info[kViewController] as! BaseViewController
            let nav = STNavigationController(rootViewController: vc)
            navArr.append(nav)
            
            let title = info[kTitle] as! String
            let image = UIImage(named: info[kImage] as! String)
            let hightlightImage = UIImage(named: info[kHighlightImage] as! String)
            let item = UITabBarItem(title: title,
                                    image: image,
                                    selectedImage: hightlightImage)
            tabBarItems.append(item)
        }
        
        setViewControllers(navArr, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
