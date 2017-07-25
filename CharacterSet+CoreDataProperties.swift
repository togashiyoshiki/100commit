//
//  CharacterSet+CoreDataProperties.swift
//  100commit
//
//  Created by togashi yoshiki on 2017/07/25.
//  Copyright © 2017年 Yoshiki Togashi. All rights reserved.
//

import Foundation
import CoreData


extension CharacterSet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CharacterSet> {
        return NSFetchRequest<CharacterSet>(entityName: "CharacterSet")
    }

    @NSManaged public var inputData2: String?
    @NSManaged public var inputData1: String?
    @NSManaged public var inputData13: String?
    @NSManaged public var inputData12: String?
    @NSManaged public var inputData11: String?
    @NSManaged public var inputData10: String?
    @NSManaged public var inputData9: String?
    @NSManaged public var inputData8: String?
    @NSManaged public var inputData7: String?
    @NSManaged public var inputData6: String?
    @NSManaged public var inputData5: String?
    @NSManaged public var inputData4: String?
    @NSManaged public var inputData3: String?
    @NSManaged public var commitTitle: String?

}
