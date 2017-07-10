//
//  CreateContentViewController.swift
//  Saying
//
//  Created by Dev.MJ on 10/07/2017.
//  Copyright © 2017 seolheelee. All rights reserved.
//

import UIKit

class CreateContentViewController: UIViewController {
  
  
  // MARK: - UI
  
  @IBOutlet weak var toTitle: UILabel!
  @IBOutlet weak var textView: UITextView!
  
  
  // MARK: - View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.toTitle.text = "#우울 외 1개 그룹"
    self.textView.delegate = self
  }
}

extension CreateContentViewController: UITextViewDelegate {
  
  func textViewDidBeginEditing(_ textView: UITextView) {
    
  }
}

