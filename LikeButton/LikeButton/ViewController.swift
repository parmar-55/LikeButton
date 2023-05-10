//
//  ViewController.swift
//  LikeButton
//
//  Created by Demo 01 on 06/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

var player = ["Virat","Rohit","Dhoni","Hardik"]


class ViewController: UIViewController {

    
    @IBOutlet weak var tableView1: UITableView!
    
    var favioritePlayer = [Int:Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func blankfavoritePlayer()
    {
        for i in 0...player.count
        {
            favioritePlayer[i]=false
        }
    }

    @IBAction func addFavoriteButton(_ sender: Any) {
        let favHome = self.storyboard?.instantiateViewController(withIdentifier: "ShowDataViewControoller") as! ShowDataViewControoller
        favHome.favioriteList=favioritePlayer
        self.navigationController?.pushViewController(favHome, animated: true)
    }
}


extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView1.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        if favioritePlayer[indexPath.row] == true
        {
            cell.img.image = UIImage(named: "filledHeart")
            cell.lbl.text = player[indexPath.row]
        }
        else
        {
            cell.img.image = UIImage(named: "blankHeart")
            cell.lbl.text = player[indexPath.row]
        }
        cell.selectionStyle  = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView1.cellForRow(at: indexPath) as! TableViewCell
        cell.img.image = UIImage(named: "filledHeart")
        favioritePlayer[indexPath.row] = true
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView1.cellForRow(at: indexPath) as! TableViewCell
        cell.img.image = UIImage(named: "blankHeart")
        favioritePlayer[indexPath.row] = false
    }
}
