//
//  AccountViewController.swift
//  Saying
//
//  Created by snow on 2017. 5. 13..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    let session = KOSession.shared()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func kakaoSignInButtonDidClick(_ sender: Any) {
        if session.isOpen() {
            session.close()
        }
        
        session.presentingViewController = self.navigationController
        let completionHandler: ((Error?) -> Void) = { error in
            self.session.presentingViewController = nil
            
            if !self.session.isOpen() {
                self.handleKakaoSignInError(error)
            }
        }
        let authTypes = [NSNumber(value: KOAuthType.talk.rawValue), NSNumber(value: KOAuthType.account.rawValue)]
        session.open(completionHandler: completionHandler, authParams: nil, authTypes: authTypes)
    }
    
    func handleKakaoSignInError(_ error: Error?) {
        let alert = UIAlertController(title: "에러", message: error?.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
