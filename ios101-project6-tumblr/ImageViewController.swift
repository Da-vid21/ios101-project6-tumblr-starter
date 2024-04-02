//
//  ImageViewController.swift
//  ios101-project6-tumblr
//
//  Created by Dawit Tekeste on 4/1/24.
//

import UIKit
import Nuke

class ImageViewController: UIViewController {

    @IBOutlet weak var fullImage: UIImageView!
    
    var postUrl: URL!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nuke.loadImage(with: postUrl, into: fullImage)
        // Do any additional setup after loading the view.
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
