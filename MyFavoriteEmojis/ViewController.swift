//
//  ViewController.swift
//  MyFavoriteEmojis
//
//  Created by BHSRam5 on 9/30/16.
//  Copyright © 2016 BHSRam5. All rights reserved.
//
//Table View

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var coolTableView: UITableView!
    
    
    var emoji=["😎 sunglasses","🤓 glasses","🤔 thinking","😱 scared","😬 startled","😇 good","😤 angry"]
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource=self
        //that is used to define the table
        coolTableView.delegate=self
        //and contents
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count

        //showing number of rows as interger
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell=UITableViewCell()
        cell.textLabel?.text=emoji[indexPath.row]
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

