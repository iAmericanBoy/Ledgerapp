//
//  CoreDataStack.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/11/20.
//

import CoreData
import Foundation

struct CoreDataStack {
    static var persistentContainer: NSPersistentCloudKitContainer = {
        let container = NSPersistentCloudKitContainer(name: "Checkbook")
        let storeURL = URL.storeURL(for: "group.oskman.ledger", databaseName: "Checkbook")
        let storeDescription = NSPersistentStoreDescription(url: storeURL)
        container.persistentStoreDescriptions = [storeDescription]

        container.loadPersistentStores(completionHandler: { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    static var context: NSManagedObjectContext {
        persistentContainer.viewContext
    }
}
