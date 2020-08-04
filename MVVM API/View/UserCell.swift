//
//  UserCell.swift
//  MVVM API
//
//  Created by Swapanjeet Singh on 14/07/20.
//  Copyright © 2020 Swapanjeet Singh. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var lblID: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblImages: UIImageView!
    @IBOutlet weak var lblServer: UILabel!
    @IBOutlet weak var lblFarm: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPublic: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWidth: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


//"server": "65535",
//"farm": 66,
//"title": "2020-07-18_14-27-02_ILCE-6500_DSC07875",
//"ispublic": 1,
//"isfriend": 0,
//"isfamily": 0,
//"url_s": "https://live.staticflickr.com/65535/50141240493_3deb93c0ac_m.jpg",
//"height_s": 135,
//"width_s": 240
