//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Muhammet cagri Karakaya on 05/04/2017.
//  Copyright © 2017 Muhammet cagri Karakaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        
        var contentwidth: CGFloat = 0.0
        
        let scroolwidth = scrollView.frame.size.width
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image : image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scroolwidth / 2 + scroolwidth * CGFloat(x)
            
            contentwidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height/2)-75, width: 150, height: 150)
        }
        
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentwidth, height: view.frame.size.height)
    }


}

