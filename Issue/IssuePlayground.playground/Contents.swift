//: Playground - noun: a place where people can play

import UIKit
import SwiftyJSON

var json:JSON = [:]

var locationJson:JSON = [:]
locationJson["foo"].string = "xy"
locationJson["bar"].int = 12323
print("locationJson: \(locationJson)")

json["locations"].arrayObject = [locationJson]  // setter works in 3.1.3, not 3.1.4
//json["locations"] = [locationJson] // literal convertible assignment works in 3.1.3 and 3.1.4

print("With locations: \(json)")
