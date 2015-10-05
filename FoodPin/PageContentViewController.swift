//
//  PageContentViewController.swift
//  FoodPin
//
//  Created by LiuWei on 15/10/4.
//  Copyright © 2015年 AppCoda. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {

    @IBOutlet weak var headingLabel:UILabel!
    @IBOutlet weak var subHeadingLabel:UILabel!
    @IBOutlet weak var contentImageView:UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    var index: Int = 0
    var heading: String = ""
    var imageFile: String = ""
    var subHeading: String = ""
    
    
    @IBAction func close(sender: UIButton) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(true, forKey: "hasViewWalkthrough")
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func nextScreen(sender: UIButton) {
        let pageViewController = self.parentViewController as! PageViewController
        pageViewController.forward(index)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headingLabel.text = heading
        subHeadingLabel.text = subHeading
        contentImageView.image = UIImage(named: imageFile)
        
        pageControl.currentPage = index
        getStartedButton.hidden = (index == 2) ? false : true
        forwardButton.hidden = (index == 2) ? true : false
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
