//
//  PostCell.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 02.07.2022.
//

import UIKit

class PostCell: UICollectionViewCell {
    @IBOutlet weak var titlePost: UILabel!
    @IBOutlet weak var previewPost: UITextView!
    @IBOutlet weak var likePost: UILabel!
    @IBOutlet weak var datePost: UILabel!
    
    func setup(post: Post) {
         
         self.titlePost.text = post.title
         self.previewPost.text = post.preview_text
         self.likePost.text = post.likes_count.formatted()
        self.datePost.text = post.timeshamp.timeshampFormetter()
        }
    }

extension Int {
    func timeshampFormetter () -> String {
        let date = Date(timeIntervalSince1970: Double(self))
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en")
        dateFormatter.dateFormat = "MMM d, yyyy"
        let timeshamp = dateFormatter.string(from: date)
        return timeshamp
    }
}
