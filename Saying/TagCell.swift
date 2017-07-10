//
//  TagCell.swift
//  Saying
//
//  Created by Dev.MJ on 10/07/2017.
//  Copyright © 2017 seolheelee. All rights reserved.
//

import UIKit

class TagCell: UICollectionViewCell {
  
  
  // MARK: - UI
  
  @IBOutlet weak var tagLabel: UILabel!
  
  
  // MARK: - Properties
  
  static let cellPadding: CGFloat = 10
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    self.tagLabel.layer.cornerRadius = self.tagLabel.frame.height / 4
    self.tagLabel.clipsToBounds = true
  }
  
  
  // MARK: - configure
  
  func configure(name: String) {
    self.tagLabel.text = name
  }
  
  
  // MARK: - size
  
  class func size(width: CGFloat) -> CGSize {
    let width = (width - cellPadding * 5) / 4
    return CGSize(width: width, height: width / 2)
  }
}
