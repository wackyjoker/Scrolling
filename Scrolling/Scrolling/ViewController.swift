//
//  ViewController.swift
//  Scrolling
//
//  Created by kevin on 02/09/2017.
//  Copyright © 2017 Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Scrolling: UIScrollView! // ScrollView link
    var images = [UIImageView]()   // image array
    
    
    override func viewDidLoad() { // loading view
        super.viewDidLoad()
     
        
    }
    override func viewDidAppear(_ animated: Bool) { // when view appears
        
        var contentwidth: CGFloat = 0.0
        
        let scrollwidth = Scrolling.frame.size.width
        print("ScrollingWidth is : \(scrollwidth)") // let us know the scroll width
        for i in 0...2 {
            let image = UIImage(named: "icon\(i).png") 
            let imageX = UIImageView(image: image)
            images.append(imageX)
            
            var newX: CGFloat = 0.0
            
            
            
            newX = scrollwidth / 2 + scrollwidth * CGFloat(i)
            
            contentwidth += newX
            
            Scrolling.addSubview(imageX)
            imageX.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2)-75, width: 150, height: 150)
        }
        Scrolling.clipsToBounds = false
        Scrolling.contentSize = CGSize(width: contentwidth,height: view.frame.size.height)
    }
   


}

