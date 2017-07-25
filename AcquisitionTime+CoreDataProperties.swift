//
//  AcquisitionTime+CoreDataProperties.swift
//  100commit
//
//  Created by togashi yoshiki on 2017/07/25.
//  Copyright © 2017年 Yoshiki Togashi. All rights reserved.
//

import Foundation
import CoreData


extension AcquisitionTime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AcquisitionTime> {
        return NSFetchRequest<AcquisitionTime>(entityName: "AcquisitionTime")
    }

    @NSManaged public var nowTime: NSDate?
    @NSManaged public var targetDate1: NSDate?
    @NSManaged public var targetDate2: NSDate?
    @NSManaged public var targetDate13: NSDate?
    @NSManaged public var targetDate12: NSDate?
    @NSManaged public var targetDate11: NSDate?
    @NSManaged public var targetDate10: NSDate?
    @NSManaged public var targetDate9: NSDate?
    @NSManaged public var targetDate8: NSDate?
    @NSManaged public var targetDate7: NSDate?
    @NSManaged public var targetDate6: NSDate?
    @NSManaged public var targetDate5: NSDate?
    @NSManaged public var targetDate4: NSDate?
    @NSManaged public var targetDate3: NSDate?
    @NSManaged public var targetDate131313: NSDate?
    @NSManaged public var targetDate121212: NSDate?
    @NSManaged public var targetDate111111: NSDate?
    @NSManaged public var targetDate101010: NSDate?
    @NSManaged public var targetDate999: NSDate?
    @NSManaged public var targetDate888: NSDate?
    @NSManaged public var targetDate777: NSDate?
    @NSManaged public var targetDate666: NSDate?
    @NSManaged public var targetDate555: NSDate?
    @NSManaged public var targetDate444: NSDate?
    @NSManaged public var targetDate333: NSDate?
    @NSManaged public var targetDate222: NSDate?
    @NSManaged public var targetDate111: NSDate?

}
