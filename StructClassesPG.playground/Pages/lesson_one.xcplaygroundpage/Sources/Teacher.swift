import Foundation

public class Teacher {
    let studentArray: [Student]
    let lesson: String
    let availableStudents: [Student]
    
    public init(studentArray: [Student], lesson: String, availableStudents: [Student]) {
        self.studentArray = studentArray
        self.lesson = lesson
        self.availableStudents = availableStudents
    }
    
    public func studentCheck() {
        for i in studentArray {
            var flag = false
            for j in availableStudents {
                if i == j {
                    flag = true
                }
            }
            if flag == true {
                print("\(i.name) \(i.surname)")
                i.studentHere()
            } else {
                print("\(i.name) \(i.surname)")
            }
        }
    }
    public func howStudents() {
        print("\(availableStudents.count) is here")
        print("\(studentArray.count - availableStudents.count) is not here")
         
    }    
}
