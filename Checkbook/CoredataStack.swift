//
//  CoreDataStack.swift
//  Checkbook
//
//  Created by Dominic Lanzillotta on 7/11/20.
//

import Foundation
import CoreData

struct CoreDataStack {

    static var persistentContainer: NSPersistentCloudKitContainer = {
        let container = NSPersistentCloudKitContainer(name: "Checkbook")
        let storeURL = URL.storeURL(for: "group.oskman.ledger", databaseName: "Checkbook")
        let storeDescription = NSPersistentStoreDescription(url: storeURL)
        container.persistentStoreDescriptions = [storeDescription]
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
}
