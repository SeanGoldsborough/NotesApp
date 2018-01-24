//
//  Notebook+CoreDataProperties.swift
//  NotesApp
//
//  Created by Sean Goldsborough on 1/23/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//
//

import Foundation
import CoreData


extension Notebook {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notebook> {
        return NSFetchRequest<Notebook>(entityName: "Notebook")
    }

    @NSManaged public var name: String?
    @NSManaged public var creationDate: NSDate?
    @NSManaged public var notes: Note?

}
