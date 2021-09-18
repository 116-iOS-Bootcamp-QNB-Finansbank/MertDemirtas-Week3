//
//  ViewController.swift
//  BannerSlider
//
//  Created by Mert Demirtaş on 18.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    
    var imgArray = [UIImage(named: "kodluyoruz"),
                    UIImage(named: "ibtech"),
                    UIImage(named: "patika"),
                    UIImage(named: "swift"),
                    UIImage(named: "apple")
    ]
    
    var headerArray = ["Kodluyoruz",
                       "IB Tech",
                       "Patika.dev",
                       "Swift",
                       "Apple"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->Int{
        return imgArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
        
        cell?.img.image = imgArray[indexPath.row]
        cell?.imageHeader.text = headerArray[indexPath.row]
        
        
        return cell!
    }
}


extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = imageCollectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}


