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

    }
    
    //MARK: Properties
    
    //MARK: Helper Functions
    
    //MARK: Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    

    

} // End of class
