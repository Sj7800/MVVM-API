//
//  ViewController.swift
//  MVVM API
//
//  Created by Swapanjeet Singh on 11/07/20.
//  Copyright © 2020 Swapanjeet Singh. All rights reserved.
//

import UIKit
import SDWebImage
class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var viewModelUser = UserViewModel()
  //  var filteredData: [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  filteredData = viewModelUser.arrUsers
        
        
        searchBar.delegate = self
        viewModelUser.vc = self
        viewModelUser.getAllUserDataAF()
       // tblView.register(UserCell.self, forCellReuseIdentifier: "UserCell")]
       // let nibname =
       tblView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")

        }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModelUser.arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        //configureCell(cell, forRowatIndexpath: indexPath)
        
        cell?.lblID.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].id)"
        cell?.lblTitle.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].secret)"
        cell?.lblStatus.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].owner)"
        cell?.lblServer.text =  "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].server)"
        cell?.lblFarm.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].farm)"
        cell?.lblName.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].title)"
        cell?.lblPublic.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].ispublic)"
        cell?.lblHeight.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].heightS)"
        cell?.lblWidth.text = "\(viewModelUser.arrUsers[indexPath.row].photos.photo[0].widthS)"
        cell?.lblImages.sd_setImage(with: URL(string: viewModelUser.arrUsers[indexPath.row].photos.photo[0].urlS), placeholderImage: nil, options: .handleCookies, completed: nil)
        
        return cell!
        
        }
    
    // MARK: Search Bar Config
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        filteredData = []
//        for Images in ImageData {
//            if Images.lowerc
//
//        }
//    }
    
    }


