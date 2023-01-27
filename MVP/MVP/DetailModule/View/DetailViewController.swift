//
//  DetailViewController.swift
//  MVP
//
//  Created by 123 on 27.01.23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var commentLabel: UILabel!
    
    var presenter: DetailViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setComment()
        
    }
}

extension DetailViewController: DetailViewProtocol{
    func setComment(comment: Comment?) {
        self.commentLabel.text = comment?.body
    }
    
    
}
