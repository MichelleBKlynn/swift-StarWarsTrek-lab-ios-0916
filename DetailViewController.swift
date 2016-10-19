//
//  DetailViewController.swift
//  StarWarTrek
//
//  Created by Michelle Staton on 10/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var starWarsImageView: UIImageView!
    @IBOutlet weak var starTrekImageView: UIImageView!
    
    var starWarsImage: UIImage!
    var starTrekImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starTrekImageView.image = starTrekImage
        starWarsImageView.image = starWarsImage
        starWarsPanSetup()
        starTrekPanSetup()
        
    }
    
    func handlePan(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let view = sender.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    
    func starWarsPanSetup() {
        let swipe = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        starWarsImageView.addGestureRecognizer(swipe)
        
        
    }
    
    func starTrekPanSetup() {
        
        let swipe = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        starTrekImageView.addGestureRecognizer(swipe)
        
    }
    
}


/*
 func setupStarTrekGestureRecognizers() {
 let imageViews = [starTrekOne, starTrekTwo, starTrekThree, starTrekFour]
 
 for imageview in imageViews {
 let tap = UITapGestureRecognizer(target: self, action: #selector(starTrekCharacterChosen))
 imageview?.addGestureRecognizer(tap)
 
 }
 }
 */


