//
//  myViewController.swift
//  6 DAY
//
//  Created by COE-008 on 31/12/19.
//  Copyright © 2019 COE-008. All rights reserved.
//

import UIKit

class myViewController: UIViewController {

  
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    var abc = UIImage()
    var Label = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = abc
        lbl.text = Label
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
