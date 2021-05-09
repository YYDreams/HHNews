//
//  MineViewController.swift
//  HHNews
//
//  Copyright © 2021 flowerflower. All rights reserved.
//

import UIKit

class MineViewController: BaseCollectionViewController {
    
   
    private lazy var navigationBarY: CGFloat = {
        return navigationController?.navigationBar.frame.maxY ?? 0
    }()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
      
        
    }
 
    
}

//
//extension MineViewController:UICollectionViewDelegateFlowLayout{
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return dataArr.count
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell: CAMineCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CAMineCell", for: indexPath) as! CAMineCell
//        cell.backgroundColor = UIColor.random
//        cell.model = self.dataArr[indexPath.row]
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width = floor(Double(kScreenWidth - 10) / 3.0)
//             return CGSize(width:width, height: 150)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return CGFloat.leastNormalMagnitude
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return CGFloat.leastNormalMagnitude
//    }
//
//}
