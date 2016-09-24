//
//  ViewController.swift
//  CollectionView
//
//  Created by Clavel Tosco on 9/24/16.
//  Copyright © 2016 Clavel Tosco. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var Array = [String]()
    
    var ButtonArray = [String]()
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Array.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        
        var Label = cell.viewWithTag(1) as! UILabel
        Label.text = Array[indexPath.row]
        
        var Button = cell.viewWithTag(2) as! UIButton
        Button.setTitle(ButtonArray[indexPath.row], forState:  UIControlState.Normal)
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Array = ["Great pics", "Great pics", "Great pics", "Great pics", "Great pics", "Great pics", "Great pics", "Great pics"]
        ButtonArray = ["Views", "Views", "Views", "Views", "Views", "Views", "Views", "Views"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

