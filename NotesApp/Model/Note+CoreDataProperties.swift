//
//  Note+CoreDataProperties.swift
//  NotesApp
//
//  Created by Sean Goldsborough on 1/23/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var creationDate: NSDate?
    @NSManaged public var text: String?
    @NSManaged public var notebook: Notebook?

}
