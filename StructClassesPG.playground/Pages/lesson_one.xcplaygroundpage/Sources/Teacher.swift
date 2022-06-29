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
        // Переменная *i* не информативна - непонятно, что она делает, назови ее так, чтобы было понятно, что она делает
        for i in studentArray {
            
            // Переменная *flag* не информативна - непонятно, что она делает, назови ее так, чтобы было понятно, что она делает
            var flag = false
            
            // Переменная *j* не информативна - непонятно, что она делает, назови ее так, чтобы было понятно, что она делает
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
    
    // Эту логику реализуешь потом - можешь удалять
    public func howStudents() {
        print("\(availableStudents.count) is here")
        print("\(studentArray.count - availableStudents.count) is not here")
         
    }    
}
