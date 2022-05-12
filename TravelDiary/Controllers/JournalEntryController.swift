//
//  JournalEntryController.swift
//  TravelDiary
//
//  Created by Scott Cox on 5/12/22.
//

import Foundation

class journalEntryController {
    
    //MARK: - Source of Truth
    
    // singleton
    static let sharedInstance = journalEntryController()
    
    // collection
    var journalEntries: [JournalEntry] = []
    
    // MARK: CRUD
    
    func createJournalEntry(withTitle title: String, address: String, summary: String) {
        let journalEntry = JournalEntry(title: title, address: address, summary: summary)
        journalEntries.append(journalEntry)
    }
    
    func update(entryToUpdate: JournalEntry, newTitle: String, address: String, summary: String) {
        // assign the newTitle to the title of the journal entry we want to update.
        entryToUpdate.title = newTitle
        entryToUpdate.address = address
        entryToUpdate.summary = summary
    }
    
    func delete(journalEntryToDelete: JournalEntry) {
        guard let index = journalEntries.firstIndex(of: journalEntryToDelete) else {return}
        journalEntries.remove(at: index)
    }
    
} // End of class
