//
//  Commit+CoreDataProperties.swift
//  100commit
//
//  Created by togashi yoshiki on 2017/07/24.
//  Copyright © 2017年 Yoshiki Togashi. All rights reserved.
//

import Foundation
import CoreData


extension Commit {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Commit> {
        return NSFetchRequest<Commit>(entityName: "Commit")
    }

    @NSManaged public var title: String?
    @NSManaged public var item1: String?
    @NSManaged public var item2: String?
    @NSManaged public var item3: String?
    @NSManaged public var item4: String?
    @NSManaged public var item5: String?
    @NSManaged public var item6: String?
    @NSManaged public var item7: String?
    @NSManaged public var item8: String?
    @NSManaged public var item9: String?
    @NSManaged public var item10: String?
    @NSManaged public var item11: String?
    @NSManaged public var item12: String?
    @NSManaged public var item13: String?
    @NSManaged public var nowTime: NSDate?
    @NSManaged public var targetTime1: String?
    @NSManaged public var targetTime2: String?
    @NSManaged public var targetTime3: String?
    @NSManaged public var targetTime4: String?
    @NSManaged public var targetTime5: String?
    @NSManaged public var targetTime6: String?
    @NSManaged public var targetTime7: String?
    @NSManaged public var targetTime8: String?
    @NSManaged public var targetTime9: String?
    @NSManaged public var targetTime10: String?
    @NSManaged public var targetTime11: String?
    @NSManaged public var targetTime12: String?
    @NSManaged public var targetTime13: String?

}
