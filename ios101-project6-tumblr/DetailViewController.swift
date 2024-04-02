//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Dawit Tekeste on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var captionView: UITextView!
    
    @IBOutlet weak var posterImageView: UIImageView!
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let post = post {
            captionView.text = post.caption.trimHTMLTags()
            
            if let photo = post.photos.first {
                url = photo.originalSize.url
                Nuke.loadImage(with: url!, into: posterImageView)
            }
        } else {
            print("Error: Post is nil")
        }
        
        navigationItem.largeTitleDisplayMode = .never

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Get access to the detail view controller via the segue's destination. (guard to unwrap the optional)
        guard let imageViewController = segue.destination as? ImageViewController else { return }

        imageViewController.postUrl = url!
    }
    var post: Post!



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
