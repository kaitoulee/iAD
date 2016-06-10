//
//  ViewController.swift
//  AD
//
//  Created by kaitouLee on 16/6/10.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController,ADBannerViewDelegate {

    @IBOutlet weak var MyAd: ADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.canDisplayBannerAds = true
        self.MyAd.delegate = self
        self.MyAd.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        NSLog("bannerViewWillLoadAd")
    }
    
    func bannerViewActionDidFinish(banner: ADBannerView!) {
        NSLog("bannerViewDidLoadAd")
        self.MyAd.hidden = false //现在显示横幅广告加载
    }
    

    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        NSLog("bannerViewActionShouldBegin")
        return true
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        NSLog("bannerView")
    }
}

