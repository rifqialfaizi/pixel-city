//
//  PopVC.swift
//  pixel-city
//
//  Created by Rifqi Alfaizi on 26/12/18.
//  Copyright © 2018 Rifqi Alfaizi. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()

        // Do any additional setup after loading the view.
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action:
            #selector(screenWasDoubleTap))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTap() {
        dismiss(animated: true, completion: nil)
    }



}
