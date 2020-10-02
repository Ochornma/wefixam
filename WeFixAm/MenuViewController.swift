//
//  MenuViewController.swift
//  WeFixAm
//
//  Created by MacMini on 31/07/2020.
//  Copyright © 2020 DCLM. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    
    
    private let menu:[String]
 
    var delegate:TableClicked?
    
    init(menu: [String]) {
        self.menu = menu
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .black
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        delegate?.click(name: menu[indexPath.row])
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0 {
            cell.imageView?.image = UIImage(named: "nlogo")
             cell.textLabel?.isHidden = true
            cell.backgroundColor = .clear
        } else{
            cell.textLabel?.text = menu[indexPath.row]
                  cell.textLabel?.textColor = .white
                  cell.backgroundColor = .clear
        }
      
        return cell
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

protocol TableClicked {
    func click(name: String)
}
