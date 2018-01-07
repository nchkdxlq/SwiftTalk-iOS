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
fileprivate let kNormalAttributs = "nomarl_attributes"
fileprivate let kSelectAttributs  = "select_attributes"
fileprivate let kImage = "image"
fileprivate let kHighlightImage = "highlight_image"
fileprivate let kTitl_Attributes = "title_attributes"

class STTabBarController: UITabBarController {
    
    func tabBarItemsDiscriptor() -> [[String: Any]] {
        
        let normalAttributs = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12),
                               NSAttributedStringKey.foregroundColor: tabbar_normal_color]
        let selectAttributs = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12),
                               NSAttributedStringKey.foregroundColor: tabbar_select_color]
        
        let chatListItem: [String: Any] = [kViewController: ChatListViewController.self,
                                           kTitle: "SwiftTalk",
                                           kNormalAttributs: normalAttributs,
                                           kSelectAttributs: selectAttributs,
                                           kImage: "tabbar_mainframe",
                                           kHighlightImage: "tabbar_mainframeHL"]
        
        let contactItem: [String: Any] = [kViewController: ContactViewController.self,
                                          kTitle: "Contact",
                                          kNormalAttributs: normalAttributs,
                                          kSelectAttributs: selectAttributs,
                                          kImage: "tabbar_contacts",
                                          kHighlightImage: "tabbar_contactsHL"]
        
        let profileItem: [String: Any] = [kViewController: ProfileViewController.self,
                                          kTitle: "Me",
                                          kNormalAttributs: normalAttributs,
                                          kSelectAttributs: selectAttributs,
                                          kImage: "tabbar_me",
                                          kHighlightImage: "tabbar_meHL"]
        
        return [chatListItem, contactItem, profileItem]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemsInfo = tabBarItemsDiscriptor()
        var navArr = [STNavigationController]()

        itemsInfo.forEach { info in
            let vcClass = info[kViewController] as! BaseViewController.Type
            let nav = STNavigationController(rootViewController: vcClass.init())
            navArr.append(nav)
        }
        setViewControllers(navArr, animated: false)
        
        itemsInfo.enumerated().forEach { (index, info) in
            let item = self.tabBar.items![index]
            let title = info[kTitle] as! String
            let image = UIImage(named: info[kImage] as! String)
            let hightlightImage = UIImage(named: info[kHighlightImage] as! String)
            let normal = info[kNormalAttributs] as? [NSAttributedStringKey:Any]
            let select = info[kSelectAttributs] as? [NSAttributedStringKey:Any]
            item.title = title
            item.image = image
            item.selectedImage = hightlightImage
            item.setTitleTextAttributes(normal, for: .normal)
            item.setTitleTextAttributes(select, for: .selected)
        }
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
