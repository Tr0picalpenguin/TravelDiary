//
//  JournalEntry.swift
//  TravelDiary
//
//  Created by Scott Cox on 5/12/22.
//

import Foundation

class JournalEntry {
    // Stored properties
    
    /// The title the user will assign for this entry
    var title: String
    /// The address the user will assign for this entry - String not GPS
    var address: String
    /// The date that will be auto assigned when a user creates a journal entry
    var timeStamp: Date
    /// The summary the user will assign for this entry
    var summary: String
    
    /// Initialize a JournalEntry object with the values provided by the user....... eventually.
    init(title: String, address: String, timeStamp: Date = Date(), summary: String) {
        /// Self references the specific instance of the Journal entry
        self.title = title
        self.address = address
        self.timeStamp = entryDate
        self.summary = summary
    }
        
}// end of class
