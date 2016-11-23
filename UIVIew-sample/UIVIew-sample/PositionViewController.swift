//
//  PositionViewController.swift
//  UIVIew-sample
//
//  Created by chengfei on 2016/11/2.
//  Copyright © 2016年 chengfei. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    
    @IBOutlet weak var blueSquare: UIView!
    
    @IBOutlet weak var OrangeSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        UIView.animate(withDuration: 1, animations:{
       
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x;
            
            
        });
        
        UIView.animate(withDuration: 1, delay: 0.5, options: UIViewAnimationOptions.curveLinear, animations: {
            self.redSquare.center.y = self.view.bounds.height - self.blueSquare.center.y

        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 1, options: UIViewAnimationOptions.curveLinear, animations: {
            self.OrangeSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            self.OrangeSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
            
        }, completion: nil)


        
    
    
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
