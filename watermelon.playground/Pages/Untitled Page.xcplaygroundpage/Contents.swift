import UIKit

struct Region {

	let name: String
}

let regions = ["Kyiv", "komi", "Moscow", "odessa"].map { Region(name: $0) }
let webRegions = ["Kyiv", "komi", "Moscow", "odessa"].map { Region(name: $0) }

let regionsSetLocal = NSOrderedSet(array: regions)
let regionsSetWeb = NSOrderedSet(array: webRegions)

//Watermelon