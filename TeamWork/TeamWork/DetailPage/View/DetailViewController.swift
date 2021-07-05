//
//  DetailViewController.swift
//  TeamWork
//
//  Created by MacBook  on 05.07.21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelContent: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelAuthorName: UILabel!
    @IBOutlet weak var imageAuthor: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageAuthor.makeRounded()
    }
    
}





extension UIImageView {

    func makeRounded() {

        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
