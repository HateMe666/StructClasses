import Foundation

public class Controller {
    let teacherArray: [Teacher]
    
    public init(teacherArray: [Teacher]) {
        self.teacherArray = teacherArray
    }
    
    public func controlStudent() {
        for i in 0...teacherArray.count - 1 {
            teacherArray[i].howStudents() 
        }
    }
}
