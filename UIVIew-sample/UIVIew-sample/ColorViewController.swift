//
//  ColorViewController.swift
//  UIVIew-sample
//
//  Created by 成飞 on 2016/11/3.
//  Copyright © 2016年 chengfei. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var blueSqare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.blueSqare.backgroundColor = UIColor.white;
            self.name.textColor = UIColor.black
        })
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
