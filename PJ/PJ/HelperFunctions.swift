//
//  HelperFunctions.swift
//  Lokey
//
//  Created by William Gu on 1/26/16.
//  Copyright © 2016 Gu Studios. All rights reserved.
//

import UIKit

class HelperFunctions: NSObject {

    static let sharedInstance = HelperFunctions();
    
    func convertToDate(date:String) -> NSDate? {
        let dateFormatter = NSDateFormatter();
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.dateFromString(date);
    }
    func formatDate(date:NSDate) -> String {
        let dateFormatter = NSDateFormatter();
        dateFormatter.dateFormat = "hh:mm a, MMM dd";
        return dateFormatter.stringFromDate(date);
    }
    
}
