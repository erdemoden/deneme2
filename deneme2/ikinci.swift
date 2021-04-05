//
//  ikinci.swift
//  deneme2
//
//  Created by erdem öden on 15.02.2021.
//  Copyright © 2021 erdem öden. All rights reserved.
//

import UIKit

class ikinci: UIViewController {
  
    @IBOutlet weak var yazi: UILabel!
    var deneme : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        yazi.text = deneme
        // Do any additional setup after loading the view.
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
