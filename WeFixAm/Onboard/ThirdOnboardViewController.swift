//
//  ThirdOnboardViewController.swift
//  WeFixAm
//
//  Created by MacMini on 30/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit

class ThirdOnboardViewController: UIViewController {
    
 @IBOutlet weak var myview:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myview.clipsToBounds = true
              myview.layer.cornerRadius = 100
              myview.layer.maskedCorners = [.layerMinXMaxYCorner]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigate(_ sender: UIButton){
        let stoaryboard = UIStoryboard(name: "Onboarding", bundle: nil)
        let mainVc = stoaryboard.instantiateViewController(identifier: "fourthVC") as! FirstViewController
        mainVc.modalPresentationStyle = .fullScreen
        self.present(mainVc, animated: true, completion: nil)
        }
      
      @IBAction func navigateBack(_ sender: UIButton){
         // self.performSegue(withIdentifier: "thirdToSecond", sender: self)
        let stoaryboard = UIStoryboard(name: "Onboarding", bundle: nil)
                                  let mainVc = stoaryboard.instantiateViewController(identifier: "secondVC") as! SecondOnboardViewController
                                  mainVc.modalPresentationStyle = .fullScreen
                            self.present(mainVc, animated: true, completion: nil)
      }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
