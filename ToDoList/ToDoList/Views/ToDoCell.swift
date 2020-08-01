//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Vidisha Nevatia on 11/06/20.
//  Copyright © 2020 Vidisha Nevatia. All rights reserved.
//

import UIKit

protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {

    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    weak var delegate: ToDoCellDelegate?

    @IBAction func completeButtonTapped(){
        delegate?.checkmarkTapped(sender: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
