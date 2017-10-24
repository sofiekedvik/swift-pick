//
//  ColorViewController.swift
//  pick
//
//  Created by Sofie Kedvik on 2017-10-22.
//  Copyright © 2017 Sofie Kedvik. All rights reserved.
//

import UIKit


class ColorViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "cell"
    var number = 1;
    
    // UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return self.items.count
        return self.number
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewController
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myLabel.text = Data[indexPath.item].emoji
        cell.backgroundColor = Data[indexPath.item].color // make cell
        
        return cell
    }
    
    // UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        let ShowSignController = self.storyboard?.instantiateViewController(withIdentifier: "showSign") as! ShowSignViewController
        
        _ = ShowSignController.view
        
        ShowSignController.heading.text = "You chose \(Data[indexPath.item].colorName)"
        ShowSignController.quote.text = Data[indexPath.item].quote
        ShowSignController.text.text = Data[indexPath.item].text
        ShowSignController.emoji.text = Data[indexPath.item].emoji
        
        self.present(ShowSignController, animated: true)
    }
}
