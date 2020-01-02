//
//  DetailViewController.swift
//  tableviewios
//
//  Created by Sabbir Hossain on 1/2/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var videoImageView: UIImageView!

    @IBOutlet weak var videoTitle: UILabel!
    
    var video: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        if let video = self.video {
        videoImageView.image = video.image
        videoTitle.text = video.title
      
    }
    
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
    
    
}
