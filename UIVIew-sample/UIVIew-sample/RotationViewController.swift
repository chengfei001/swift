//
//  RotationViewController.swift
//  UIVIew-sample
//
//  Created by chengfei on 2016/11/3.
//  Copyright © 2016年 chengfei. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var wheel: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func spin() {
        UIView.animate(withDuration: 2, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            //旋转
            self.wheel.transform = CGAffineTransform.rotated(self.wheel.transform) (by: CGFloat(M_PI))
            self.wheel.transform = self.wheel.transform.rotated(by: CGFloat(M_PI))
        }, completion: {(finshed) in
            self.spin()
        })
    }
//        UIView.animate(withDuration: 1, animations: {
//            self.wheel.transform = CGAffineTransform.init(rotationAngle:CGFloat(M_PI))
//            
//        })
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.spin();
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
