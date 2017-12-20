//
//  ViewController.swift
//  Phelim Test App
//
//  Created by Phelim O Brien on 19/12/2017.
//  Copyright © 2017 Phelim O Brien. All rights reserved.
//

import UIKit
import ZendeskSDK


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: .system)
        button.setTitle("Help Me", for: [])
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(showHelpCenter), for: [.touchUpInside])
        view.addSubview(button)
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    @objc func showHelpCenter() {
        // Apply a dark theme to the Help Center
        // Style Navbar
        let navbarAttributes = [ NSAttributedStringKey.foregroundColor : UIColor(red:252.0/255.0, green:204.0/255.0, blue:1.0/255.0, alpha:1.0)]
        UINavigationBar.appearance().tintColor = UIColor(red:254.0/255.0, green:254.0/255.0, blue:254.0/255.0, alpha:1.0)
        UINavigationBar.appearance().barTintColor = UIColor(red:22.0/255.0, green:21.0/255.0, blue:19.0/255.0, alpha:1.0)
        UINavigationBar.appearance().titleTextAttributes = navbarAttributes
        
        // Style Support SDK
        let theme = ZDKTheme.base()
        
        theme.primaryTextColor = UIColor(red:252.0/255.0, green:204.0/255.0, blue:1.0/255.0, alpha:1.0)
        theme.secondaryTextColor = UIColor(red:254.0/255.0, green:254.0/255.0, blue:254.0/255.0, alpha:1.0)
        theme.primaryBackgroundColor = UIColor(red:30.0/255.0, green:29.0/255.0, blue:29.0/255.0, alpha:1.0)
        theme.secondaryBackgroundColor = UIColor(red:22.0/255.0, green:21.0/255.0, blue:19.0/255.0, alpha:1.0)
        theme.emptyBackgroundColor = UIColor(red:30.0/255.0, green:29.0/255.0, blue:29.0/255.0, alpha:1.0)
        theme.metaTextColor = UIColor(red: 130.0/255.0, green: 130.0/255.0, blue: 130.0/255.0, alpha: 1.0)
        theme.separatorColor = UIColor(red: 58.0/255.0, green: 56.0/255.0, blue: 57.0/255.0, alpha: 1.0)
        theme.inputFieldTextColor = UIColor(red: 254.0/255.0, green: 254.0/255.0, blue: 254.0/255.0, alpha: 1.0)
        theme.inputFieldBackgroundColor = UIColor(red:30.0/255.0, green: 28.0/255.0, blue: 29.0/255.0, alpha: 1.0)
        theme.apply()

        ZDKHelpCenter.presentOverview(self, with: ZDKHelpCenterOverviewContentModel.defaultContent())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

