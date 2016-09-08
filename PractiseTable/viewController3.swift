//
//  viewController3.swift
//  PractiseTable
//
//  Created by Ishan Mahajan on 02/09/16.
//  Copyright © 2016 Ishan Mahajan. All rights reserved.
//

// view controller for gif page

import UIKit
import ImageIO

class viewController3: UIViewController {

    @IBOutlet weak var imageview1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
                let Gif = UIImage.gifImageWithName("giphy1")
        let imageview1 = UIImageView(image: Gif)
        imageview1.frame = CGRect(x:20, y:50.0, width: self.view.frame.size.width-40, height: 150.0 )
        view.addSubview(imageview1)
    }

}
