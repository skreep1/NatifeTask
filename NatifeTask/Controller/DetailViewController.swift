//
//  DetailViewController.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 04.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var post: Post?
    
    @IBOutlet weak var titlePost: UILabel!
    @IBOutlet weak var previewPost: UITextView!
    @IBOutlet weak var datePost: UILabel!
    @IBOutlet weak var likePost: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postView()
    }
    
    private func postView() {
        titlePost.text = post?.title
        previewPost.text = post?.preview_text
        datePost.text = post?.timeshamp.timeshampFormetter()
        likePost.text = post?.likes_count.formatted()
    }
}
