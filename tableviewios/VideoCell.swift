//
//  VideoCell.swift
//  tableviewios
//
//  Created by Sabbir Hossain on 1/1/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {


    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBOutlet weak var videoTittleLabel: UILabel!
    
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTittleLabel.text = video.title
    }
    
}
