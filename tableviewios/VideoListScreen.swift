//
//  VideoListScreen.swift
//  tableviewios
//
//  Created by Sabbir Hossain on 1/1/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {
    
    var tempVideo:Video! = nil
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()

        // Do any additional setup after loading the view.
    }
    
   // tableView.delegate = self
    //tableView.dataSource = self
    
    

    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        //let video1 = Video(image: (UIImage(named:"ImageName") ?? nil) ?? default value, title: "first")
        
        let video1 = Video(image: UIImage(named:"one")!, title: "Sabbir TableView Demo")
        let video2 = Video(image: UIImage(named:"two")!, title: "My Development")
        let video3 = Video(image: UIImage(named:"three")!, title: "Practise makes a man perfect")
        let video4 = Video(image: UIImage(named:"four")!, title: "What are you doing")
        let video5 = Video(image: UIImage(named:"five")!, title: "Lets do this")
        let video6 = Video(image: UIImage(named:"six")!, title: "Work hard in silence ")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
        
    }
    
}
    
    extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
        
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        
        let video = videos[indexpath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"VideoCell") as! VideoCell
    
        cell.setVideo(video: video)
        return cell
    }
        //code for Showing in log
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           // var rowNo = indexPath.row;
            
             print(videos[indexPath.row].title)
            tempVideo = videos[indexPath.row]
            performSegue(withIdentifier: "showDetail", sender: self)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? DetailViewController {
                destination.video = tempVideo
            }
        }
}






