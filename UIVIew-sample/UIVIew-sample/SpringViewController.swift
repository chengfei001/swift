//
//  SpringViewController.swift
//  UIVIew-sample
//
//  Created by chengfei on 2016/11/4.
//  Copyright © 2016年 chengfei. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var orageSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveLinear, animations: {
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
        }, completion: nil)
        
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: .curveLinear, animations: {
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
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
