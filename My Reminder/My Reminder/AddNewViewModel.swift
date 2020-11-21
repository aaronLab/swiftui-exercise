//
//  AddNewViewModel.swift
//  My Reminder
//
//  Created by Aaron Lee on 2020-11-21.
//

import Foundation

final class AddNewViewModel {
    
    func saveReminder(with reminder: ReminderViewModel) {
        DataManager.shared.saveReminder(id: reminder.id, name: reminder.name, date: reminder.date)
    }
    
}
