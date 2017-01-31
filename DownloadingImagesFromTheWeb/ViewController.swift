//
//  ViewController.swift
//  DownloadingImagesFromTheWeb
//
//  Created by Ahmed T Khalil on 1/23/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageDisplay: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
          TO SAVE TO DOCUMENTS DIRECTORY
        //getting the image data from the web is exactly the same as getting text data
        
        //first create URL
        let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Man_o%27war_cove_near_lulworth_dorset_arp.jpg/600px-Man_o%27war_cove_near_lulworth_dorset_arp.jpg")!
        
        //then create a URL request
        let request = URLRequest(url: url)
        
        //then create a data task with the request
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error != nil{
                print(error as Any)
            }else{
                if let dataUnwrapped = data {
                    //this part changes because we have an image instead of a String
                    if let beachImage = UIImage(data: dataUnwrapped){
                        self.imageDisplay.image = beachImage
                        
                        //I made notes on the iOS file system (see desktop)
                        //the next step is to store this image in our documents folder...
                        //to do this you first need a path to your documents subdirectory:
                        let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                        //NOTE: the 'true' for expand tilde above means to replace '~' with the full path name ('~' represents a link to home directories on iOS and MacOS)
                        
                        //then create the path for what you wish to save...
                        let savePath = documentPath[0] + "/beachImage.jpg"
                        
                        //and finally save it in the documents directory using the constructed path
                        do{
                            try UIImageJPEGRepresentation(beachImage, 1)?.write(to: URL(fileURLWithPath: savePath))
                        }catch{
                            //process errors
                        }
                    }
                }
            }
        }
        
        task.resume()
        */
        

        /*
          TO RESTORE IT
        //now to restore our image from our documents folder...
        //again we need a path to your documents subdirectory:
        let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        //then create the path for what you wish to restore...
        let restorePath = documentPath[0] + "/beachImage.jpg"
        
        //and finally retrieve it from the documents directory using the constructed file path and set it to our image display
        imageDisplay.image = UIImage(contentsOfFile: restorePath)
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

