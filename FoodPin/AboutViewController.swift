//
//  AboutViewController.swift
//  FoodPin
//
//  Created by LiuWei on 15/10/5.
//  Copyright © 2015年 AppCoda. All rights reserved.
//

import UIKit
import MessageUI

class AboutViewController: UIViewController, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {
    
    @IBAction func sendEmail(sender: AnyObject) {
        if MFMailComposeViewController.canSendMail() {
            let composer = MFMailComposeViewController()
            
            composer.mailComposeDelegate = self
            composer.setToRecipients(["987860319@qq.com"])
            composer.navigationBar.tintColor = UIColor.whiteColor()
            // 模拟器上有bug，真机不存在这个问题
            presentViewController(composer, animated: true, completion:nil)
        }
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue {
        case MFMailComposeResultCancelled.rawValue:
            print("Mail cancelled")
        case MFMailComposeResultSaved.rawValue:
            print("Mail sent")
        case MFMailComposeResultFailed.rawValue:
            print("Failed to send mail: \(error?.localizedDescription)")
        default:
            break
        }
        
        // Dismiss the Mail interface
        dismissViewControllerAnimated(true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
