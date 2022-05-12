//
//  JournalEntryTableViewCell.swift
//  TravelDiary
//
//  Created by Scott Cox on 5/12/22.
//

import UIKit

class JournalEntryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var journalEntryTitleLabel: UILabel!
    @IBOutlet weak var journalEntryAdressLabel: UILabel!
    @IBOutlet weak var journalEntryDateLabel: UILabel!
    
    func undateView(for journalEntry: JournalEntry) {
        journalEntryTitleLabel.text = journalEntry.title
        journalEntryAdressLabel.text = journalEntry.address
        journalEntryDateLabel.text = journalEntry.timeStamp.stringValue()
        
    }
} // End of class
