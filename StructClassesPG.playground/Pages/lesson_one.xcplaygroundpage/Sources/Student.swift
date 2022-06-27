import Foundation

public class Student: Equatable {
    public static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.name == rhs.name && lhs.surname == rhs.surname
    }
    
    let name: String
    let surname: String
    
    public init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    public func studentHere() {
       print("Hello, im here")
    }
  
}


