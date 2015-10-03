//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by LiuWei on 15/9/27.
//  Copyright © 2015年 AppCoda. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var backgroundImageView:UIImageView!
    @IBOutlet weak var dialogView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: .Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // combining two transforms
        let scale = CGAffineTransformMakeScale(0.0, 0.0)
        let translate = CGAffineTransformMakeTranslation(0, 500)
        dialogView.transform = CGAffineTransformConcat(scale, translate)
    }

    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(0.7, options: nil, animations: { () -> Void in
//            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//            }, completion: nil)
        // 从小变大的动画
//        UIView.animateWithDuration(0.7) { () -> Void in
//            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//        }
        // Spring Animation
        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                // scale animation 缩放动画
                let scale = CGAffineTransformMakeScale(1, 1)
                // slide up animation 滑动动画
                let translate = CGAffineTransformMakeTranslation(0, 0)
                self.dialogView.transform = CGAffineTransformConcat(scale, translate)
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
