//
//  ViewController.swift
//  SDWebImageTest
//
//  Created by Emiko Clark on 6/29/17.
//  Copyright © 2017 Emiko Clark. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var imageURLs = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageURLs = [
            "http://tailandfur.com/wp-content/uploads/2013/08/cute-baby-animals-25.jpg",
            "http://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals/cute-baby-animals-31.jpg",
            "http://az616578.vo.msecnd.net/files/2016/08/18/6360713962473687171430001147_cute-baby-animals-wallpaper.jpg",
            "http://imgs.abduzeedo.com/files/articles/baby-animals/Baby-Animals-042.jpg",
            "https://s-media-cache-ak0.pinimg.com/736x/ce/f4/fb/cef4fbe798dd881aeb9af681929326e5.jpg",
            "http://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals/cute-baby-animals-2.jpg",
            "http://justsomething.co/wp-content/uploads/2013/11/cutest-baby-animals-8.jpg",
            "http://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals-2/cute-baby-animals-2-2.jpg",
            "http://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals/cute-baby-animals-10.jpg"
        ]
        
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let imageView = cell?.viewWithTag(1) as! UIImageView
        imageView.sd_setImage(with: URL(string: imageURLs[indexPath.row])!)
        imageView.sd_setImage(with: URL(string: imageURLs[indexPath.row]), placeholderImage: #imageLiteral(resourceName: "WoodGrain2"), options: [.progressiveDownload, .continueInBackground ])
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageURLs.count
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

