//
//  BobaViewController.swift
//  bobaGenerator
//
//  Created by April Sanchez on 1/18/20.
//  Copyright © 2020 Maggie Lim. All rights reserved.
//

import UIKit

class BobaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageName1 = "blankBoba.png"
        let image1 = UIImage(named: imageName1)
        let imageView1 = UIImageView(image: image1!)
        imageView1.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        self.view.bringSubviewToFront(imageView1)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
