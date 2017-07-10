//
//  CreateTagViewController.swift
//  Saying
//
//  Created by Dev.MJ on 10/07/2017.
//  Copyright © 2017 seolheelee. All rights reserved.
//

import UIKit

class CreateTagViewController: UIViewController {

  
  // MARK: - UI
  
  @IBOutlet weak var to: UILabel!
  @IBOutlet weak var toTitle: UILabel!
  @IBOutlet weak var tagCollectionView: UICollectionView!
  @IBOutlet weak var tagTitle: UILabel!
  @IBOutlet weak var nextButton: UIButton!
  
  
  // MARK: - Properties
  
  let reuseIdentifier: String = "tagCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tagCollectionView.delegate = self
    self.tagCollectionView.dataSource = self
    
    self.nextButton.layer.cornerRadius = self.nextButton.frame.height / 4
    self.nextButton.clipsToBounds = true
    self.nextButton.layer.borderColor = UIColor.blue.cgColor
    self.nextButton.layer.borderWidth = 1.0
  }
}

extension CreateTagViewController: UICollectionViewDelegateFlowLayout {
  
  
  func collectionView(_ collectionView: UICollectionView,
                      didSelectItemAt indexPath: IndexPath) {
    guard let selectedCell = collectionView.cellForItem(at: indexPath) as? TagCell else { return }
    selectedCell.tagLabel.backgroundColor = .blue
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    return TagCell.size(width: collectionView.frame.width)
  }
}

extension CreateTagViewController: UICollectionViewDataSource {
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return 30
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.reuseIdentifier,
                                                  for: indexPath) as! TagCell
    cell.configure(name: "#태그 이름")
    return cell
  }
}
