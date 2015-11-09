//
//  ComprasViewController.swift
//  Suprema Salsa
//
//  Created by guitarrkurt on 08/11/15.
//  Copyright © 2015 miguel mexicano. All rights reserved.
//

import UIKit

class ComprasViewController: UIViewController, UICollectionViewDataSource {
    var arrayImage = ["aguaHorchata.png", "aguaJamaica.png", "arabeKilo.png", "burrito.png", "Chistorra.png", "cincoTacosPastor.png", "cochinita2.png", "cebollitas.png", "chalupas.png", "taco arabe.png", "costillas.png", "tacobistec.png", "aguasimple.png", "arrachera.png", "sincronizada.png", "frijoles.png", "gringa.png", "carnepastormenu.png", "sirlon.png", "unTacoPastor.png"]

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    internal func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return arrayImage.count
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    internal func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellCompras", forIndexPath: indexPath) as! ComprasCollectionViewCell
        
        cell.button.setBackgroundImage(UIImage(named: arrayImage[indexPath.row]), forState: .Normal)
        return cell
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        return CGSize(width: screenSize.width/2, height: screenSize.width/2);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
