//
//  ViewController.swift
//  6 DAY
//
//  Created by COE-008 on 31/12/19.
//  Copyright © 2019 COE-008. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    var arr =  [["Image":#imageLiteral(resourceName: "vijay11.jpg") ,"Label":"photo1"],
                ["Image":#imageLiteral(resourceName: "vijay12.jpg") ,"Label":"photo2"],
                ["Image":#imageLiteral(resourceName: "vijay13.jpg") ,"Label":"photo3"],
                ["Image":#imageLiteral(resourceName: "vijay14.jpeg") ,"Label":"photo4"],
                ["Image":#imageLiteral(resourceName: "vijay15") ,"Label":"photo5"],
                ["Image":#imageLiteral(resourceName: "vijay16.jpg") ,"Label":"photo6"],
                ["Image":#imageLiteral(resourceName: "vijay17") ,"Label":"photo7"],
                ["Image":#imageLiteral(resourceName: "vijay20") ,"Label":"photo8"],
                ["Image":#imageLiteral(resourceName: "vijay11") ,"Label":"photo9"],
                ["Image":#imageLiteral(resourceName: "vijay19") ,"Label":"photo10"],
                ["Image":#imageLiteral(resourceName: "vijay11.jpg") ,"Label":"photo11"],
                ["Image":#imageLiteral(resourceName: "vijay12.jpg") ,"Label":"photo12"],
                ["Image":#imageLiteral(resourceName: "vijay13.jpg") ,"Label":"photo13"],
                ["Image":#imageLiteral(resourceName: "vijay14.jpeg") ,"Label":"photo14"],
                ["Image":#imageLiteral(resourceName: "vijay15") ,"Label":"photo15"],
                ["Image":#imageLiteral(resourceName: "vijay16.jpg") ,"Label":"photo16"],
                ["Image":#imageLiteral(resourceName: "vijay17") ,"Label":"photo17"],
                ["Image":#imageLiteral(resourceName: "vijay20") ,"Label":"photo18"],
                ["Image":#imageLiteral(resourceName: "vijay11") ,"Label":"photo19"],
                ["Image":#imageLiteral(resourceName: "vijay19") ,"Label":"photo20"]]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as! CollectionViewCell
        cell.img.image = arr[indexPath.row]["Image"] as! UIImage
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    
    {
        let Detail = self.storyboard?.instantiateViewController(withIdentifier: "Page2") as! myViewController
        self.navigationController?.pushViewController(Detail, animated: true)
        Detail.abc = arr[indexPath.row]["Image"] as! UIImage
        Detail.Label = arr[indexPath.row]["Label"] as! String
        
        
    }
    

    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let itemsize = UIScreen.main.bounds.width / 3 
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
//        layout.itemSize = CGSize(width: itemsize, height: itemsize)
//        layout.minimumInteritemSpacing = 3
//        layout.minimumLineSpacing = 3
//        collectionview.collectionViewLayout = layout
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

