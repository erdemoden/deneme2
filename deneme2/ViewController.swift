//
//  ViewController.swift
//  deneme2
//
//  Created by erdem öden on 15.02.2021.
//  Copyright © 2021 erdem öden. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    var gecis  = UITableViewCell()
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Deneme = UITableViewCell()
        if(String (indexPath.row)=="0"){
            Deneme.textLabel?.text = "osur"
        }
        else{
            Deneme.textLabel?.text = "\(indexPath.row)"
        }
        return Deneme
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        gecis = (tableView.cellForRow(at: indexPath))!
        self.performSegue(withIdentifier: "ikincigec", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ikincigec"{
            let gecis1 = segue.destination as? ikinci
          
            gecis1?.deneme = (gecis.textLabel!.text!)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }


}

