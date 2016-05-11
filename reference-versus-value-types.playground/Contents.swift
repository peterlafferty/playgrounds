//messing around with https://www.raywenderlich.com/112027/reference-value-types-in-swift-part-1 

import UIKit

//first example shows let/var unwrapping with class
class RandomClassName {
    var text = "LOL"
}

var optional: RandomClassName? = RandomClassName()
print("Text is \(optional!.text)")


if let letUnwrapped = optional {
    //this code works because it's a reference type
    letUnwrapped.text = "YOLO"

    print("Text is \(optional!.text)")
    optional!.text = "DILLIGAF"
    print(letUnwrapped.text)
}
print("Text is \(optional!.text)")


if var varUnwrapped = optional {
    varUnwrapped.text = "YAGNI"
    varUnwrapped = RandomClassName()
    varUnwrapped.text = "ROFLMAO"
}
print("Text is \(optional!.text)")

//second example shows let/var unwrapping with struct

struct RandomStructName {
    var text = "YOLO"
}


var optionalStruct: RandomStructName? = RandomStructName()
print("Text is \(optionalStruct!.text)")


if let letUnwrapped = optionalStruct {
    /* this code doesn't work because it's a value type
     letUnwrapped.text = "YOLO"
    */
    print("Text is \(optionalStruct!.text)")
    optionalStruct!.text = "DILLIGAF"
    print(letUnwrapped.text)

}
print("Text is \(optionalStruct!.text)")


if var varUnwrapped = optionalStruct {
    varUnwrapped.text = "YAGNI"
    varUnwrapped = RandomStructName()
    varUnwrapped.text = "ROFLMAO"
}
print("Text is \(optionalStruct!.text)")

