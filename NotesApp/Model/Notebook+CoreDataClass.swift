//
//  Notebook+CoreDataClass.swift
//  NotesApp
//
//  Created by Sean Goldsborough on 1/23/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Notebook)
public class Notebook: NSManagedObject {
    
    convenience init(name: String, context: NSManagedObjectContext){
        if let myEntity = NSEntityDescription.entity(forEntityName: "Notebook", in: context){
            self.init(entity: myEntity, insertInto: context)
            self.name = name
            self.creationDate = NSDate()
        } else {
            fatalError("Unable to find Entity Name")
        }
    }
    
    var humanReadableAge : String {
        get{
            let format = DateFormatter()
            format.timeStyle = .none
            format.dateStyle = .short
            format.doesRelativeDateFormatting = true
            format.locale = Locale.current
            
            return format.string(from: creationDate as! Date)
            
        }
    }

}
