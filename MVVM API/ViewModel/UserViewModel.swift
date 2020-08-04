//
//  UserViewModel.swift
//  MVVM API
//
//  Created by Swapanjeet Singh on 14/07/20.
//  Copyright © 2020 Swapanjeet Singh. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage


class UserViewModel{
     
    weak var vc: ViewController?
    var arrUsers =  [ImageData]()

    
    
    func getAllUserDataAF () {
      AF.request("https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&per_page=20&page=1&api_key=6f102c62f41998d151e5a1b48713cf13&format=json&nojsoncallback=1&extras=url_s").response
        {   response in
            if let data = response.data {
                do{
                    let userResponse = try JSONDecoder().decode(ImageData.self, from: data)
                    print(userResponse)
                    self.arrUsers.append(userResponse)
                    DispatchQueue.main.async {
                    self.vc?.tblView.reloadData()
                    }
                } catch  let err{
                    print(err.localizedDescription)
                }
                }
        }
 
        
////with: URL(string: "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&per_page=20&page=1&api_key=6f102c62f41998d151e5a1b48713cf13&format=json&nojsoncallback=1&extras=url_s")) { (data, response, error)
//
//    func getAllUserData() {
//        URLSession.shared.dataTask(with: "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&per_page=20&page=1&api_key=6f102c62f41998d151e5a1b48713cf13&format=json&nojsoncallback=1&extras=url_s") { (data, response, error) in
//            if error == nil{
//                if let data = data {
//                do{
//                    let userResponse = try JSONDecoder().decode([ImageData].self, from: data)
//                    print(userResponse)
//
////                    for modelUser in userResponse {
////                        self.arrUsers.append(modelUser)
////                    }
////                    print(self.arrUsers)
//                    self.arrUsers.append(contentsOf: userResponse)
//                    DispatchQueue.main.async {
//                        self.vc?.tblView.reloadData()
//                    }
//
//                } catch  let err{
//                    print(err.localizedDescription)
//                }
//
//            } else  {
//                    print(error?.localizedDescription)
//            }
//            }
//
//
//    }.resume()
//



}
}

