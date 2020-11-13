//
//  ViewController.swift
//  TestProject
//
//  Created by user on 13/11/2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // Mark: UITableViewDelegate, UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Section: \(indexPath.section), row: \(indexPath.row)"
        return cell
    }
    
    let headerID = String(describing: CustomHeaderView.self)
    
    private func tableViewConfig() {
        let nib = UINib(nibName: headerID, bundle: nil)
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: headerID)
        
        tableView.tableFooterView = UIView()
            }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerID) as!CustomHeaderView
        return header
    }
    
    func tableView(_tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    }
    


