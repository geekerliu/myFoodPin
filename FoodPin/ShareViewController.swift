//
//  ShareViewController.swift
//  FoodPin
//
//  Created by LiuWei on 15/9/28.
//  Copyright © 2015年 AppCoda. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var backgroundImageView:UIImageView!
    @IBOutlet weak var facebookButton:UIButton!
    @IBOutlet weak var emailButton:UIButton!
    @IBOutlet weak var messageButton:UIButton!
    @IBOutlet weak var twitterButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Applying a Blurring Effect to the Background Image
        let blurEffect = UIBlurEffect(style: .Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        facebookButton.transform =  CGAffineTransformMakeTranslation(0, 500)
        messageButton.transform =  CGAffineTransformMakeTranslation(0, 500)
        
        emailButton.transform =  CGAffineTransformMakeTranslation(0, -500)
        twitterButton.transform =  CGAffineTransformMakeTranslation(0, -500)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                self.facebookButton.transform = CGAffineTransformMakeTranslation(0, 0)
                self.twitterButton.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.emailButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.messageButton.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
