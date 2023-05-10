//
//  ShowDataViewControoller.swift
//  LikeButton
//
//  Created by Demo 01 on 06/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class ShowDataViewControoller: UIViewController {

    
    @IBOutlet weak var tableView2: UITableView!
    var favioriteList = [Int:Bool]()
    var temp = [Int]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...favioriteList.count
        {
            if favioriteList[i]==true
            {
                temp.append(i)
                //print(temp)
            }
        }
    }
    
   


}


extension ShowDataViewControoller:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = player[temp[indexPath.row]]
        
            return cell
    }
    
    
}
