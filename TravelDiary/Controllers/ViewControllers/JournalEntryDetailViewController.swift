//
//  JournalEntryDetailViewController.swift
//  TravelDiary
//
//  Created by Scott Cox on 5/12/22.
//

import UIKit

class JournalEntryDetailViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var journalEntryTitleTextField: UITextField!
    @IBOutlet weak var journalEntryAddressTextField: UITextField!
    @IBOutlet weak var journalEntryDateLabel: UILabel!
    @IBOutlet weak var journalEntrySummaryTextView: UITextView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    
    //MARK: Properties
    var journalEntryReceiver: JournalEntry?
    
    //MARK: Helper Functions
    func updateViews() {
        guard let journalEntry = journalEntryReceiver else {return}
        journalEntryTitleTextField.text = journalEntry.title
        journalEntryAddressTextField.text = journalEntry.address
        journalEntrySummaryTextView.text = journalEntry.summary
        journalEntryDateLabel.text = journalEntry.timeStamp.stringValue()
    }
    
    //MARK: Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = journalEntryTitleTextField.text,
                let address = journalEntryAddressTextField.text,
                let summary = journalEntrySummaryTextView.text else {return}
        
        
        
        
        if let journalEntry = journalEntryReceiver {
            JournalEntryController.sharedInstance.update(entryToUpdate: journalEntry, newTitle: title, address: address, summary: summary)
        }  else {
            JournalEntryController.sharedInstance.createJournalEntry(withTitle: title, address: address, summary: summary)
        }
        navigationController?.popViewController(animated: true)
    }
    
    
    

    

} // End of class
